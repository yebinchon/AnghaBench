
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raid_disks; int near_copies; } ;
struct r10conf {scalar_t__ fullsync; TYPE_4__* mddev; TYPE_1__ geo; int device_lock; int reshape_progress; TYPE_1__ prev; } ;
struct TYPE_8__ {int chunk_sectors; TYPE_3__* queue; int recovery; } ;
struct TYPE_6__ {int ra_pages; } ;
struct TYPE_7__ {TYPE_2__ backing_dev_info; } ;


 int MD_RECOVERY_INTR ;
 int MaxSector ;
 int PAGE_SIZE ;
 int md_finish_reshape (TYPE_4__*) ;
 int smp_wmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void end_reshape(struct r10conf *conf)
{
 if (test_bit(MD_RECOVERY_INTR, &conf->mddev->recovery))
  return;

 spin_lock_irq(&conf->device_lock);
 conf->prev = conf->geo;
 md_finish_reshape(conf->mddev);
 smp_wmb();
 conf->reshape_progress = MaxSector;
 spin_unlock_irq(&conf->device_lock);




 if (conf->mddev->queue) {
  int stripe = conf->geo.raid_disks *
   ((conf->mddev->chunk_sectors << 9) / PAGE_SIZE);
  stripe /= conf->geo.near_copies;
  if (conf->mddev->queue->backing_dev_info.ra_pages < 2 * stripe)
   conf->mddev->queue->backing_dev_info.ra_pages = 2 * stripe;
 }
 conf->fullsync = 0;
}
