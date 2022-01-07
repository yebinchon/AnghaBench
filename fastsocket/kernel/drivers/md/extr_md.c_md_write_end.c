
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int safemode; scalar_t__ safemode_delay; int safemode_timer; int thread; int writes_pending; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ jiffies ;
 int md_wakeup_thread (int ) ;
 int mod_timer (int *,scalar_t__) ;

void md_write_end(struct mddev *mddev)
{
 if (atomic_dec_and_test(&mddev->writes_pending)) {
  if (mddev->safemode == 2)
   md_wakeup_thread(mddev->thread);
  else if (mddev->safemode_delay)
   mod_timer(&mddev->safemode_timer, jiffies + mddev->safemode_delay);
 }
}
