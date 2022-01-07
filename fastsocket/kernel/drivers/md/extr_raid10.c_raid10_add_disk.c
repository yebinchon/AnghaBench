
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {scalar_t__ merge_bvec_fn; } ;
struct raid10_info {scalar_t__ recovery_disabled; TYPE_2__* rdev; scalar_t__ head_position; TYPE_2__* replacement; } ;
struct TYPE_3__ {int raid_disks; } ;
struct r10conf {int fullsync; struct raid10_info* mirrors; TYPE_1__ geo; } ;
struct mddev {scalar_t__ recovery_cp; int merge_check_needed; scalar_t__ recovery_disabled; scalar_t__ queue; scalar_t__ gendisk; struct r10conf* private; } ;
struct md_rdev {int saved_raid_disk; int raid_disk; int data_offset; int bdev; int flags; } ;
struct TYPE_4__ {int flags; } ;


 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int In_sync ;
 scalar_t__ MaxSector ;
 int QUEUE_FLAG_DISCARD ;
 int Replacement ;
 int Unmerged ;
 int WantReplacement ;
 int _enough (struct r10conf*,int,int) ;
 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ blk_queue_discard (struct request_queue*) ;
 int clear_bit (int ,int *) ;
 int disk_stack_limits (scalar_t__,int ,int) ;
 int freeze_array (struct r10conf*,int ) ;
 int md_integrity_add_rdev (struct md_rdev*,struct mddev*) ;
 int print_conf (struct r10conf*) ;
 int queue_flag_set_unlocked (int ,scalar_t__) ;
 int rcu_assign_pointer (TYPE_2__*,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 int synchronize_sched () ;
 scalar_t__ test_bit (int ,int *) ;
 int unfreeze_array (struct r10conf*) ;

__attribute__((used)) static int raid10_add_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct r10conf *conf = mddev->private;
 int err = -EEXIST;
 int mirror;
 int first = 0;
 int last = conf->geo.raid_disks - 1;
 struct request_queue *q = bdev_get_queue(rdev->bdev);

 if (mddev->recovery_cp < MaxSector)



  return -EBUSY;
 if (rdev->saved_raid_disk < 0 && !_enough(conf, 1, -1))
  return -EINVAL;

 if (rdev->raid_disk >= 0)
  first = last = rdev->raid_disk;

 if (q->merge_bvec_fn) {
  set_bit(Unmerged, &rdev->flags);
  mddev->merge_check_needed = 1;
 }

 if (rdev->saved_raid_disk >= first &&
     conf->mirrors[rdev->saved_raid_disk].rdev == ((void*)0))
  mirror = rdev->saved_raid_disk;
 else
  mirror = first;
 for ( ; mirror <= last ; mirror++) {
  struct raid10_info *p = &conf->mirrors[mirror];
  if (p->recovery_disabled == mddev->recovery_disabled)
   continue;
  if (p->rdev) {
   if (!test_bit(WantReplacement, &p->rdev->flags) ||
       p->replacement != ((void*)0))
    continue;
   clear_bit(In_sync, &rdev->flags);
   set_bit(Replacement, &rdev->flags);
   rdev->raid_disk = mirror;
   err = 0;
   if (mddev->gendisk)
    disk_stack_limits(mddev->gendisk, rdev->bdev,
        rdev->data_offset << 9);
   conf->fullsync = 1;
   rcu_assign_pointer(p->replacement, rdev);
   break;
  }

  if (mddev->gendisk)
   disk_stack_limits(mddev->gendisk, rdev->bdev,
       rdev->data_offset << 9);

  p->head_position = 0;
  p->recovery_disabled = mddev->recovery_disabled - 1;
  rdev->raid_disk = mirror;
  err = 0;
  if (rdev->saved_raid_disk != mirror)
   conf->fullsync = 1;
  rcu_assign_pointer(p->rdev, rdev);
  break;
 }
 if (err == 0 && test_bit(Unmerged, &rdev->flags)) {







  synchronize_sched();
  freeze_array(conf, 0);
  unfreeze_array(conf);
  clear_bit(Unmerged, &rdev->flags);
 }
 md_integrity_add_rdev(rdev, mddev);
 if (mddev->queue && blk_queue_discard(bdev_get_queue(rdev->bdev)))
  queue_flag_set_unlocked(QUEUE_FLAG_DISCARD, mddev->queue);

 print_conf(conf);
 return err;
}
