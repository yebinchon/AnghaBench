
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int suspended; int safemode_timer; TYPE_1__* pers; int active_io; int sb_wait; } ;
struct TYPE_2__ {int (* quiesce ) (struct mddev*,int) ;} ;


 int BUG_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int del_timer_sync (int *) ;
 int stub1 (struct mddev*,int) ;
 int synchronize_rcu () ;
 int wait_event (int ,int) ;

void mddev_suspend(struct mddev *mddev)
{
 BUG_ON(mddev->suspended);
 mddev->suspended = 1;
 synchronize_rcu();
 wait_event(mddev->sb_wait, atomic_read(&mddev->active_io) == 0);
 mddev->pers->quiesce(mddev, 1);

 del_timer_sync(&mddev->safemode_timer);
}
