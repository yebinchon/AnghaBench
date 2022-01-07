
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {struct mddev* mddev; } ;
struct mddev {int thread; } ;


 int md_wakeup_thread (int ) ;
 int unplug_slaves (struct mddev*) ;

void md_raid1_unplug_device(struct r1conf *conf)
{
 struct mddev *mddev = conf->mddev;

 unplug_slaves(mddev);
 md_wakeup_thread(mddev->thread);
}
