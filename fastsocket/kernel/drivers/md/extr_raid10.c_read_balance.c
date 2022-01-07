
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct geom {int near_copies; int far_copies; } ;
struct r10conf {scalar_t__ const next_resync; int copies; TYPE_3__* mddev; TYPE_2__* mirrors; struct geom geo; } ;
struct r10bio {scalar_t__ sector; int sectors; int read_slot; TYPE_1__* devs; } ;
struct md_rdev {scalar_t__ recovery_offset; int flags; int nr_pending; } ;
typedef scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ recovery_cp; } ;
struct TYPE_5__ {scalar_t__ head_position; int rdev; int replacement; } ;
struct TYPE_4__ {scalar_t__ bio; int devnum; scalar_t__ addr; } ;


 int Faulty ;
 scalar_t__ IO_BLOCKED ;
 int In_sync ;
 scalar_t__ MaxSector ;
 int Unmerged ;
 scalar_t__ abs (scalar_t__) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 scalar_t__ is_badblock (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ;
 int raid10_find_phys (struct r10conf*,struct r10bio*) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdev_dec_pending (struct md_rdev*,TYPE_3__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct md_rdev *read_balance(struct r10conf *conf,
        struct r10bio *r10_bio,
        int *max_sectors)
{
 const sector_t this_sector = r10_bio->sector;
 int disk, slot;
 int sectors = r10_bio->sectors;
 int best_good_sectors;
 sector_t new_distance, best_dist;
 struct md_rdev *best_rdev, *rdev = ((void*)0);
 int do_balance;
 int best_slot;
 struct geom *geo = &conf->geo;

 raid10_find_phys(conf, r10_bio);
 rcu_read_lock();
retry:
 sectors = r10_bio->sectors;
 best_slot = -1;
 best_rdev = ((void*)0);
 best_dist = MaxSector;
 best_good_sectors = 0;
 do_balance = 1;






 if (conf->mddev->recovery_cp < MaxSector
     && (this_sector + sectors >= conf->next_resync))
  do_balance = 0;

 for (slot = 0; slot < conf->copies ; slot++) {
  sector_t first_bad;
  int bad_sectors;
  sector_t dev_sector;

  if (r10_bio->devs[slot].bio == IO_BLOCKED)
   continue;
  disk = r10_bio->devs[slot].devnum;
  rdev = rcu_dereference(conf->mirrors[disk].replacement);
  if (rdev == ((void*)0) || test_bit(Faulty, &rdev->flags) ||
      test_bit(Unmerged, &rdev->flags) ||
      r10_bio->devs[slot].addr + sectors > rdev->recovery_offset)
   rdev = rcu_dereference(conf->mirrors[disk].rdev);
  if (rdev == ((void*)0) ||
      test_bit(Faulty, &rdev->flags) ||
      test_bit(Unmerged, &rdev->flags))
   continue;
  if (!test_bit(In_sync, &rdev->flags) &&
      r10_bio->devs[slot].addr + sectors > rdev->recovery_offset)
   continue;

  dev_sector = r10_bio->devs[slot].addr;
  if (is_badblock(rdev, dev_sector, sectors,
    &first_bad, &bad_sectors)) {
   if (best_dist < MaxSector)

    continue;
   if (first_bad <= dev_sector) {




    bad_sectors -= (dev_sector - first_bad);
    if (!do_balance && sectors > bad_sectors)
     sectors = bad_sectors;
    if (best_good_sectors > sectors)
     best_good_sectors = sectors;
   } else {
    sector_t good_sectors =
     first_bad - dev_sector;
    if (good_sectors > best_good_sectors) {
     best_good_sectors = good_sectors;
     best_slot = slot;
     best_rdev = rdev;
    }
    if (!do_balance)

     break;
   }
   continue;
  } else
   best_good_sectors = sectors;

  if (!do_balance)
   break;





  if (geo->near_copies > 1 && !atomic_read(&rdev->nr_pending))
   break;


  if (geo->far_copies > 1)
   new_distance = r10_bio->devs[slot].addr;
  else
   new_distance = abs(r10_bio->devs[slot].addr -
        conf->mirrors[disk].head_position);
  if (new_distance < best_dist) {
   best_dist = new_distance;
   best_slot = slot;
   best_rdev = rdev;
  }
 }
 if (slot >= conf->copies) {
  slot = best_slot;
  rdev = best_rdev;
 }

 if (slot >= 0) {
  atomic_inc(&rdev->nr_pending);
  if (test_bit(Faulty, &rdev->flags)) {



   rdev_dec_pending(rdev, conf->mddev);
   goto retry;
  }
  r10_bio->read_slot = slot;
 } else
  rdev = ((void*)0);
 rcu_read_unlock();
 *max_sectors = best_good_sectors;

 return rdev;
}
