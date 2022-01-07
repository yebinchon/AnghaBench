
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ap_device {int unregistered; int lock; } ;
typedef int pm_message_t ;


 int __ap_poll_device (struct ap_device*,unsigned long*) ;
 int ap_config_timer ;
 int ap_suspend_flag ;
 int ap_tasklet ;
 int * ap_work_queue ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_disable (int *) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static int ap_bus_suspend(struct device *dev, pm_message_t state)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 unsigned long flags;

 if (!ap_suspend_flag) {
  ap_suspend_flag = 1;




  del_timer_sync(&ap_config_timer);
  if (ap_work_queue != ((void*)0)) {
   destroy_workqueue(ap_work_queue);
   ap_work_queue = ((void*)0);
  }

  tasklet_disable(&ap_tasklet);
 }

 do {
  flags = 0;
  spin_lock_bh(&ap_dev->lock);
  __ap_poll_device(ap_dev, &flags);
  spin_unlock_bh(&ap_dev->lock);
 } while ((flags & 1) || (flags & 2));

 spin_lock_bh(&ap_dev->lock);
 ap_dev->unregistered = 1;
 spin_unlock_bh(&ap_dev->lock);

 return 0;
}
