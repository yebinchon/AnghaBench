
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union map_info {int dummy; } map_info ;
struct TYPE_2__ {int in_lock; int in; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ io; } ;
struct dm_target {scalar_t__ begin; struct raid_set* private; } ;
struct bio {int bi_sector; } ;


 int DM_MAPIO_SUBMITTED ;
 int EIO ;
 scalar_t__ READ ;
 scalar_t__ READA ;
 scalar_t__ S_BIOS_READ ;
 scalar_t__ S_BIOS_WRITE ;
 int atomic_inc (scalar_t__) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_rw (struct bio*) ;
 int io_get (struct raid_set*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_do_raid (struct raid_set*) ;

__attribute__((used)) static int raid_map(struct dm_target *ti, struct bio *bio,
      union map_info *map_context)
{

 if (bio_rw(bio) == READA)
  return -EIO;
 else {
  struct raid_set *rs = ti->private;





  io_get(rs);
  bio->bi_sector -= ti->begin;


  mutex_lock(&rs->io.in_lock);
  bio_list_add(&rs->io.in, bio);
  mutex_unlock(&rs->io.in_lock);


  wake_do_raid(rs);


  atomic_inc(rs->stats + (bio_data_dir(bio) == READ ?
            S_BIOS_READ : S_BIOS_WRITE));
  return DM_MAPIO_SUBMITTED;
 }
}
