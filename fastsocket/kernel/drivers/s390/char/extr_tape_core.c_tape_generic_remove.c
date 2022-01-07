
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tape_device {int tape_state; TYPE_1__* cdev; int cdev_id; } ;
struct TYPE_5__ {int kobj; } ;
struct ccw_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int dev; } ;


 int DBF_EVENT (int,char*,int ) ;
 int DBF_LH (int,char*,int ,struct ccw_device*) ;



 int __tape_discard_requests (struct tape_device*) ;
 struct tape_device* dev_get_drvdata (TYPE_2__*) ;
 int dev_name (int *) ;
 int dev_set_drvdata (TYPE_2__*,int ) ;
 int get_ccwdev_lock (TYPE_1__*) ;
 int pr_warning (char*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int sysfs_remove_group (int *,int *) ;
 int tape_attr_group ;
 int tape_cleanup_device (struct tape_device*) ;
 int tape_put_device (struct tape_device*) ;
 int tape_state_set (struct tape_device*,int const) ;

void
tape_generic_remove(struct ccw_device *cdev)
{
 struct tape_device * device;

 device = dev_get_drvdata(&cdev->dev);
 if (!device) {
  return;
 }
 DBF_LH(3, "(%08x): tape_generic_remove(%p)\n", device->cdev_id, cdev);

 spin_lock_irq(get_ccwdev_lock(device->cdev));
 switch (device->tape_state) {
  case 130:
   tape_state_set(device, 129);
  case 129:



   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   break;
  case 128:



   tape_state_set(device, 129);
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   tape_cleanup_device(device);
   break;
  default:





   DBF_EVENT(3, "(%08x): Drive in use vanished!\n",
    device->cdev_id);
   pr_warning("%s: A tape unit was detached while in "
       "use\n", dev_name(&device->cdev->dev));
   tape_state_set(device, 129);
   __tape_discard_requests(device);
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   tape_cleanup_device(device);
 }

 if (dev_get_drvdata(&cdev->dev)) {
  sysfs_remove_group(&cdev->dev.kobj, &tape_attr_group);
  dev_set_drvdata(&cdev->dev, tape_put_device(dev_get_drvdata(&cdev->dev)));
 }
}
