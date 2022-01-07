
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_block {struct dasd_device* base; } ;
struct TYPE_2__ {int dev; } ;


 int CAP_SYS_ADMIN ;
 int DASD_STOPPED_QUIESCE ;
 int EACCES ;
 int capable (int ) ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int dev_name (int *) ;
 int get_ccwdev_lock (TYPE_1__*) ;
 int pr_info (char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int dasd_ioctl_quiesce(struct dasd_block *block)
{
 unsigned long flags;
 struct dasd_device *base;

 base = block->base;
 if (!capable (CAP_SYS_ADMIN))
  return -EACCES;

 pr_info("%s: The DASD has been put in the quiesce "
  "state\n", dev_name(&base->cdev->dev));
 spin_lock_irqsave(get_ccwdev_lock(base->cdev), flags);
 dasd_device_set_stop_bits(base, DASD_STOPPED_QUIESCE);
 spin_unlock_irqrestore(get_ccwdev_lock(base->cdev), flags);
 return 0;
}
