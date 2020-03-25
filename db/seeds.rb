# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# maples = Photo.create(
#     title: "Lost Maples",
#     category: "Trees",
#     location: "Lost Maples State Park, TX",
#     year: 2018
# )
# maples.photo.attach(io: File.open("./public/test.jpg"), filename: "test.jpg", content_type: "image/jpg")

# all_categories = ['home', 'animals', 'plants', 'civilization', 'lights', 'man vs wild', 'mountains', 'homed']

home = Category.create(category: 'home')
animals = Category.create(category: 'animals')
plants = Category.create(category: 'plants')
civilization = Category.create(category: 'civilization')
lights = Category.create(category: 'lights')
man_wild = Category.create(category: 'man_wild')
mountains = Category.create(category: 'mountains')
homed = Category.create(category: 'homed')

photos = [
    # home
    {filename: 'banff.jpg', title: 'Stripes', location: 'Banff, AB, Canada', year: 2017, categories: [home, mountains]},
    {filename: 'cherry4.jpg', title: 'Cherry Blossom at High Park', location: 'Toronto, ON, Canada', year: 2017, categories: [home, plants, homed]},
    {filename: 'louisiana2.jpg', title: 'Oak Valley', location: 'New Orleans, Louisiana', year: 2019, categories: [home, plants]},
    {filename: 'banff.jpg', title: 'Stripes', location: 'Banff, AB, Canada', year: 2017, categories: [home, mountains]},
    {filename: 'medicine_lake.jpg', title: 'Tranquil', location: 'AB, Canada', year: 2017, categories: [home, mountains]},
    {filename: 'montserrat2.jpg', title: 'Chasing the Carribean Blue', location: 'Montserrat', year: 2017, categories: [home]},
    {filename: 'montserrat9.jpg', title: 'Into the setting Sun', location: 'Montserrat', year: 2017, categories: [home, lights]},
    {filename: 'natural_bridge4.jpg', title: 'Ostrich', location: 'San Antonio, TX, USA', year: 2018, categories: [home, animals]},
    {filename: 'louisiana.jpg', title: 'Hello there', location: 'New Orleans, Louisiana, USA', year: 2019, categories: [home, animals]},
    {filename: 'seattle2.jpg', title: 'Fall colors', location: 'Seattle, WA, USA', year: 2018, categories: [home, plants]},
    {filename: 'seattle3.jpg', title: 'Northern trees', location: 'Seattle, WA, USA', year: 2018, categories: [home, plants, mountains]},
    {filename: 'seattle8.jpg', title: 'Skyline', location: 'Seattle, WA, USA', year: 2018, categories: [home, civilization]},
    {filename: 'seattle13.jpg', title: 'Reflection', location: 'Seattle, WA, USA', year: 2018, categories: [home, civilization, man_wild]},
    {filename: 'seattle15.jpg', title: 'Bouncing lights', location: 'Seattle, WA, USA', year: 2018, categories: [home, civilization, lights]},
    {filename: 'toronto.jpg', title: 'Casa Loma at night', location: 'Toronto, ON, Canada', year: 2016, categories: [home, civilization, homed]},
    {filename: 'toronto5.jpg', title: 'White Christmas', location: 'Toronto, ON, Canada', year: 2016, categories: [home, civilization, homed, lights]},
    {filename: 'banff.jpg', title: 'Stripes', location: 'Banff, AB, Canada', year: 2017, categories: [home, mountains]},

    # animals
    {filename: 'cat2.jpg', title: 'Fur ball', location: 'Austin, TX, USA', year: 2019, categories: [animals, homed, lights]},
    {filename: 'cat3.jpg', title: 'Sunday afternoon', location: 'Austin, TX, USA', year: 2019, categories: [animals, homed]},
    {filename: 'cat4.jpg', title: 'Hide and seek', location: 'Austin, TX, USA', year: 2019, categories: [homed, animals]},
    {filename: 'louisiana4.jpg', title: 'Food is here', location: 'New Orleans, Louisiana, USA', year: 2019, categories: [homed, animals]},
    {filename: 'giraffe.jpg', title: 'Giraffe', location: 'San Antonio, TX, USA', year: 2018, categories: [animals]},
    {filename: 'natural_bridge6.jpg', title: 'Posing', location: 'San Antonio, TX, USA', year: 2018, categories: [animals]},

    # civilization
    {filename: '1.jpg', title: 'Downtown Seattle', location: 'Seattle, WA, USA', year: 2018, categories: [civilization]},
    {filename: 'banff4.jpg', title: 'Mountain town', location: 'Banff, AB, Canada', year: 2017, categories: [civilization, man_wild, mountains]},
    {filename: 'louisiana5.jpg', title: 'French Quarter', location: 'New Orleans, Lousiana, USA', year: 2019, categories: [civilization]},
    {filename: 'christmas2.jpg', title: 'Xmas shopping with mom', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, civilization]},
    {filename: 'chimney.jpg', title: 'Modern Pompeii', location: 'Montserrat', year: 2017, categories: [civilization, man_wild]},
    {filename: 'seattle7.jpg', title: 'Seattle skyline', location: 'Seattle, WA, USA', year: 2018, categories: [civilization, lights]},
    {filename: 'seattle9.jpg', title: 'Amazon Spheres', location: 'Seattle, WA, USA', year: 2018, categories: [civilization]},
    {filename: 'seattle14.jpg', title: 'Bird nest', location: 'Seattle, WA, USA', year: 2018, categories: [civilization, man_wild]},
    {filename: 'toronto3.jpg', title: 'Snow light', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, civilization, lights]},
    {filename: 'toronto6.jpg', title: 'First snow', location: 'Toronto, ON, Canada', year: 2017, categories: [homed, civilization]},
    {filename: 'banff.jpg', title: 'Stripes', location: 'Banff, AB, Canada', year: 2017, categories: [home, mountains]},

    # homed
    {filename: 'toronto2.jpg', title: 'University College', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, civilization]},
    {filename: 'maple8.jpg', title: 'Lost Maples', location: 'TX, USA', year: 2018, categories: [homed, civilization]},
    {filename: 'toronto4.jpg', title: 'First snow upon University College', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, civilization]},
    {filename: 'toronto9.jpg', title: 'Golden peach', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, civilization, lights]},
    {filename: 'scarborough3.jpg', title: 'Scarborough Bluffs', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, man_wild]},
    {filename: 'banff.jpg', title: 'Stripes', location: 'Banff, AB, Canada', year: 2017, categories: [home, mountains]},

    # lights
    {filename: 'toronto8.jpg', title: 'After the rain', location: 'Toronto, ON, Canada', year: 2016, categories: [homed, civilization, lights]},
    {filename: 'maple6.jpg', title: 'Vibrant sky', location: 'TX, USA', year: 2018, categories: [homed, lights]},
    {filename: 'chihuly2.jpg', title: 'Blooming', location: 'Toronto, ON, Canada', year: 2016, categories: [lights]},

    # man_wild
    {filename: 'banff7.jpg', title: 'Serenity', location: 'Banff, AB, Canada', year: 2017, categories: [man_wild]},
    {filename: 'montserrat.jpg', title: 'Solo explorer', location: 'Montserrat', year: 2017, categories: [man_wild]},

    # mountains
    {filename: 'banff2.jpg', title: 'Spikey summit', location: 'Banff, AB, Canada', year: 2017, categories: [mountains]},
    {filename: 'icefield.jpg', title: 'Icefield', location: 'Banff, AB, Canada', year: 2017, categories: [mountains]},
    {filename: 'maple.jpg', title: 'Lost Maples', location: 'TX, USA', year: 2018, categories: [homed, mountains]},
    {filename: 'montserrat4.jpg', title: 'Buried city', location: 'Montserrat', year: 2017, categories: [mountains]},
    {filename: 'montserrat7.jpg', title: 'After the eruption', location: 'Montserrat', year: 2017, categories: [mountains]},
    {filename: 'montserrat11.jpg', title: 'Columnar basalt', location: 'Montserrat', year: 2017, categories: [mountains]},
    {filename: 'yoho.jpg', title: 'Yoho', location: 'AB, Canada', year: 2017, categories: [mountains]},
    {filename: 'golden_hill.jpg', title: 'Golden hill', location: 'Arizona, USA', year: 2018, categories: [home, mountains]},
    {filename: 'seattle12.jpg', title: 'Sphere in Spheres', location: 'Seattle, WA, USA', year: 2018, categories: [plants]},
    {filename: 'austin.jpg', title: 'Furry', location: 'TX, USA', year: 2018, categories: [plants]},
    {filename: 'austin2.jpg', title: 'Fall is here', location: 'TX, USA', year: 2018, categories: [plants]},
    {filename: 'cherry2.jpg', title: 'Cherry blossom', location: 'Toronto, ON, Canada', year: 2016, categories: [plants, homed]},
    {filename: 'christmas.jpg', title: 'Merry Xmas', location: 'Toronto, ON, Canada', year: 2016, categories: [plants]},
    {filename: 'arizona.jpg', title: 'Top of the world', location: 'AZ, USA', year: 2018, categories: [mountains, plants]},
    {filename: 'cactus.jpg', title: 'Cactus after a rain', location: 'AZ, USA', year: 2018, categories: [plants]},
    {filename: 'maple.jpg', title: 'Floating', location: 'TX, USA', year: 2018, categories: [plants]},
    {filename: 'maple5.jpg', title: 'Shining in Fall', location: 'TX, USA', year: 2018, categories: [plants]},
    {filename: 'montreal2.jpg', title: 'Dancing in the wind', location: 'Montreal, QC, Canada', year: 2017, categories: [plants]},
    {filename: 'seattle2.jpg', title: 'Winter is coming', location: 'Seattle, WA, USA', year: 2018, categories: [plants]},
    {filename: 'seattle11.jpg', title: 'Firework', location: 'Seattle, WA, USA', year: 2018, categories: [plants]},
]

photos.each{ |photo| 
    new_photo = Photo.create(title: photo[:title], filename: photo[:filename], location: photo[:location], year: photo[:year], categories: photo[:categories])
    # photo.categories.each{ |category| 
    #     new_photo.categories << category
    # }
}