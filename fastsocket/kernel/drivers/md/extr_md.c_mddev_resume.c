
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int sync_thread; int thread; int recovery; TYPE_1__* pers; int sb_wait; scalar_t__ suspended; } ;
struct TYPE_2__ {int (* quiesce ) (struct mddev*,int ) ;} ;


 int MD_RECOVERY_NEEDED ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*,int ) ;
 int wake_up (int *) ;

void mddev_resume(struct mddev *mddev)
{
 mddev->suspended = 0;
 wake_up(&mddev->sb_wait);
 mddev->pers->quiesce(mddev, 0);

 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 md_wakeup_thread(mddev->thread);
 md_wakeup_thread(mddev->sync_thread);
}
