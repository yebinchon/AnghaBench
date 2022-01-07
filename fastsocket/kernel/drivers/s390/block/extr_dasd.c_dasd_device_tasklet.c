
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dasd_device {int cdev; int tasklet_scheduled; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int __dasd_device_check_expire (struct dasd_device*) ;
 int __dasd_device_check_path_events (struct dasd_device*) ;
 int __dasd_device_process_ccw_queue (struct dasd_device*,struct list_head*) ;
 int __dasd_device_process_final_queue (struct dasd_device*,struct list_head*) ;
 int __dasd_device_start_head (struct dasd_device*) ;
 int atomic_set (int *,int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 int shutdown_waitq ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dasd_device_tasklet(struct dasd_device *device)
{
 struct list_head final_queue;

 atomic_set (&device->tasklet_scheduled, 0);
 INIT_LIST_HEAD(&final_queue);
 spin_lock_irq(get_ccwdev_lock(device->cdev));

 __dasd_device_check_expire(device);

 __dasd_device_process_ccw_queue(device, &final_queue);
 __dasd_device_check_path_events(device);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));

 __dasd_device_process_final_queue(device, &final_queue);
 spin_lock_irq(get_ccwdev_lock(device->cdev));

 __dasd_device_start_head(device);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 if (waitqueue_active(&shutdown_waitq))
  wake_up(&shutdown_waitq);
 dasd_put_device(device);
}
