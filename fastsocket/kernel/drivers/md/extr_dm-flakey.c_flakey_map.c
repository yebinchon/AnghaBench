
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union map_info {int ll; } ;
struct flakey_c {unsigned int start_time; unsigned int up_interval; unsigned int down_interval; scalar_t__ corrupt_bio_rw; scalar_t__ corrupt_bio_byte; int flags; } ;
struct dm_target {struct flakey_c* private; } ;
struct bio {int dummy; } ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int DROP_WRITES ;
 int EIO ;
 unsigned int HZ ;
 scalar_t__ READ ;
 scalar_t__ WRITE ;
 scalar_t__ all_corrupt_bio_flags_match (struct bio*,struct flakey_c*) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*,int ) ;
 int corrupt_bio_data (struct bio*,struct flakey_c*) ;
 int flakey_map_bio (struct dm_target*,struct bio*) ;
 unsigned int jiffies ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int flakey_map(struct dm_target *ti, struct bio *bio,
        union map_info *map_context)
{
 struct flakey_c *fc = ti->private;
 unsigned elapsed;


 elapsed = (jiffies - fc->start_time) / HZ;
 if (elapsed % (fc->up_interval + fc->down_interval) >= fc->up_interval) {



  map_context->ll = 1;




  if (bio_data_dir(bio) == READ)
   goto map_bio;




  if (test_bit(DROP_WRITES, &fc->flags)) {
   bio_endio(bio, 0);
   return DM_MAPIO_SUBMITTED;
  }




  if (fc->corrupt_bio_byte && (fc->corrupt_bio_rw == WRITE)) {
   if (all_corrupt_bio_flags_match(bio, fc))
    corrupt_bio_data(bio, fc);
   goto map_bio;
  }




  return -EIO;
 }

map_bio:
 flakey_map_bio(ti, bio);

 return DM_MAPIO_REMAPPED;
}
