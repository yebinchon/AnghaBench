
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct mddev {char* last_sync_action; int level; void* resync_max; scalar_t__ resync_min; scalar_t__ reshape_backwards; void* reshape_position; int recovery_wait; int sb_wait; int flush_pending; int write_lock; int active_io; int openers; int active; int safemode_timer; int all_mddevs; int disks; TYPE_1__ bitmap_info; int reconfig_mutex; int open_mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int LEVEL_NONE ;
 void* MaxSector ;
 int atomic_set (int *,int) ;
 int init_timer (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void mddev_init(struct mddev *mddev)
{
 mutex_init(&mddev->open_mutex);
 mutex_init(&mddev->reconfig_mutex);
 mutex_init(&mddev->bitmap_info.mutex);
 INIT_LIST_HEAD(&mddev->disks);
 INIT_LIST_HEAD(&mddev->all_mddevs);
 init_timer(&mddev->safemode_timer);
 atomic_set(&mddev->active, 1);
 atomic_set(&mddev->openers, 0);
 atomic_set(&mddev->active_io, 0);
 spin_lock_init(&mddev->write_lock);
 atomic_set(&mddev->flush_pending, 0);
 init_waitqueue_head(&mddev->sb_wait);
 init_waitqueue_head(&mddev->recovery_wait);
 mddev->reshape_position = MaxSector;
 mddev->reshape_backwards = 0;
 mddev->last_sync_action = "none";
 mddev->resync_min = 0;
 mddev->resync_max = MaxSector;
 mddev->level = LEVEL_NONE;
}
