
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int safemode; int thread; int sysfs_state; scalar_t__ external; int writes_pending; } ;


 int atomic_read (int *) ;
 int md_wakeup_thread (int ) ;
 int sysfs_notify_dirent_safe (int ) ;

__attribute__((used)) static void md_safemode_timeout(unsigned long data)
{
 struct mddev *mddev = (struct mddev *) data;

 if (!atomic_read(&mddev->writes_pending)) {
  mddev->safemode = 1;
  if (mddev->external)
   sysfs_notify_dirent_safe(mddev->sysfs_state);
 }
 md_wakeup_thread(mddev->thread);
}
