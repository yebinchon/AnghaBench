
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {scalar_t__ merge_bvec_fn; } ;
struct multipath_info {int * rdev; } ;
struct mpconf {int device_lock; struct multipath_info* multipaths; } ;
struct mddev {int raid_disks; int degraded; int queue; int gendisk; struct mpconf* private; } ;
struct md_rdev {int raid_disk; int data_offset; int flags; TYPE_2__* bdev; } ;
struct TYPE_4__ {TYPE_1__* bd_disk; } ;
struct TYPE_3__ {struct request_queue* queue; } ;


 int EEXIST ;
 int In_sync ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int blk_queue_max_segments (int ,int) ;
 int blk_queue_segment_boundary (int ,scalar_t__) ;
 int disk_stack_limits (int ,TYPE_2__*,int) ;
 int md_integrity_add_rdev (struct md_rdev*,struct mddev*) ;
 int print_multipath_conf (struct mpconf*) ;
 int rcu_assign_pointer (int *,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int multipath_add_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct mpconf *conf = mddev->private;
 struct request_queue *q;
 int err = -EEXIST;
 int path;
 struct multipath_info *p;
 int first = 0;
 int last = mddev->raid_disks - 1;

 if (rdev->raid_disk >= 0)
  first = last = rdev->raid_disk;

 print_multipath_conf(conf);

 for (path = first; path <= last; path++)
  if ((p=conf->multipaths+path)->rdev == ((void*)0)) {
   q = rdev->bdev->bd_disk->queue;
   disk_stack_limits(mddev->gendisk, rdev->bdev,
       rdev->data_offset << 9);







   if (q->merge_bvec_fn) {
    blk_queue_max_segments(mddev->queue, 1);
    blk_queue_segment_boundary(mddev->queue,
          PAGE_CACHE_SIZE - 1);
   }

   spin_lock_irq(&conf->device_lock);
   mddev->degraded--;
   rdev->raid_disk = path;
   set_bit(In_sync, &rdev->flags);
   spin_unlock_irq(&conf->device_lock);
   rcu_assign_pointer(p->rdev, rdev);
   err = 0;
   md_integrity_add_rdev(rdev, mddev);
   break;
  }

 print_multipath_conf(conf);

 return err;
}
