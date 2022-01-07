
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {struct faulty_conf* private; } ;
struct faulty_conf {TYPE_1__* rdev; int * counters; } ;
struct bio {int bi_size; int bi_bdev; int bi_end_io; struct bio* bi_private; scalar_t__ bi_sector; } ;
struct TYPE_2__ {int bdev; } ;


 int EIO ;
 int GFP_NOIO ;
 scalar_t__ READ ;
 int ReadFixable ;
 int ReadPersistent ;
 int ReadTransient ;
 scalar_t__ WRITE ;
 size_t WriteAll ;
 int WritePersistent ;
 int WriteTransient ;
 int add_sector (struct faulty_conf*,scalar_t__,int ) ;
 scalar_t__ atomic_read (int *) ;
 struct bio* bio_clone_mddev (struct bio*,int ,struct mddev*) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*,int ) ;
 scalar_t__ check_mode (struct faulty_conf*,int ) ;
 scalar_t__ check_sector (struct faulty_conf*,scalar_t__,scalar_t__,scalar_t__) ;
 int faulty_fail ;
 int generic_make_request (struct bio*) ;

__attribute__((used)) static int make_request(struct mddev *mddev, struct bio *bio)
{
 struct faulty_conf *conf = mddev->private;
 int failit = 0;

 if (bio_data_dir(bio) == WRITE) {

  if (atomic_read(&conf->counters[WriteAll])) {



   bio_endio(bio, -EIO);
   return 0;
  }

  if (check_sector(conf, bio->bi_sector, bio->bi_sector+(bio->bi_size>>9),
     WRITE))
   failit = 1;
  if (check_mode(conf, WritePersistent)) {
   add_sector(conf, bio->bi_sector, WritePersistent);
   failit = 1;
  }
  if (check_mode(conf, WriteTransient))
   failit = 1;
 } else {

  if (check_sector(conf, bio->bi_sector, bio->bi_sector + (bio->bi_size>>9),
     READ))
   failit = 1;
  if (check_mode(conf, ReadTransient))
   failit = 1;
  if (check_mode(conf, ReadPersistent)) {
   add_sector(conf, bio->bi_sector, ReadPersistent);
   failit = 1;
  }
  if (check_mode(conf, ReadFixable)) {
   add_sector(conf, bio->bi_sector, ReadFixable);
   failit = 1;
  }
 }
 if (failit) {
  struct bio *b = bio_clone_mddev(bio, GFP_NOIO, mddev);
  b->bi_bdev = conf->rdev->bdev;
  b->bi_private = bio;
  b->bi_end_io = faulty_fail;
  generic_make_request(b);
  return 0;
 } else {
  bio->bi_bdev = conf->rdev->bdev;
  return 1;
 }
}
