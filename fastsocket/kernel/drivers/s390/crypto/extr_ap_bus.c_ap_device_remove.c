
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ap_driver {int (* remove ) (struct ap_device*) ;} ;
struct ap_device {int lock; int queue_count; int list; int timeout; struct ap_driver* drv; } ;


 int ap_device_list_lock ;
 int ap_flush_queue (struct ap_device*) ;
 int ap_poll_requests ;
 int atomic_sub (int ,int *) ;
 int del_timer_sync (int *) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ap_device*) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static int ap_device_remove(struct device *dev)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 struct ap_driver *ap_drv = ap_dev->drv;

 ap_flush_queue(ap_dev);
 del_timer_sync(&ap_dev->timeout);
 spin_lock_bh(&ap_device_list_lock);
 list_del_init(&ap_dev->list);
 spin_unlock_bh(&ap_device_list_lock);
 if (ap_drv->remove)
  ap_drv->remove(ap_dev);
 spin_lock_bh(&ap_dev->lock);
 atomic_sub(ap_dev->queue_count, &ap_poll_requests);
 spin_unlock_bh(&ap_dev->lock);
 return 0;
}
