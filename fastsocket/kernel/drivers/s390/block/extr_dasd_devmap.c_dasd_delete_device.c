
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_devmap {struct dasd_device* device; } ;
struct dasd_device {struct ccw_device* cdev; int ref_count; } ;
struct ccw_device {int dev; } ;


 int BUG_ON (int ) ;
 int IS_ERR (struct dasd_devmap*) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int dasd_delete_wq ;
 int dasd_devmap_lock ;
 struct dasd_devmap* dasd_find_busid (int ) ;
 int dasd_free_device (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int put_device (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

void
dasd_delete_device(struct dasd_device *device)
{
 struct ccw_device *cdev;
 struct dasd_devmap *devmap;
 unsigned long flags;


 devmap = dasd_find_busid(dev_name(&device->cdev->dev));
 BUG_ON(IS_ERR(devmap));
 spin_lock(&dasd_devmap_lock);
 if (devmap->device != device) {
  spin_unlock(&dasd_devmap_lock);
  dasd_put_device(device);
  return;
 }
 devmap->device = ((void*)0);
 spin_unlock(&dasd_devmap_lock);


 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 dev_set_drvdata(&device->cdev->dev, ((void*)0));
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);





 atomic_sub(3, &device->ref_count);


 wait_event(dasd_delete_wq, atomic_read(&device->ref_count) == 0);


 cdev = device->cdev;
 device->cdev = ((void*)0);


 put_device(&cdev->dev);


 dasd_free_device(device);
}
