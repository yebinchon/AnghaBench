
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct subchannel {TYPE_1__ dev; int private; } ;
struct ccw_device {int ccwlock; TYPE_2__* private; } ;
struct TYPE_4__ {int state; } ;


 int DEV_STATE_NOT_OPER ;
 int ccw_device_unregister (struct ccw_device*) ;
 int io_subchannel_attr_group ;
 int io_subchannel_quiesce (struct subchannel*) ;
 int kfree (int ) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;
 int sch_set_cdev (struct subchannel*,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int
io_subchannel_remove (struct subchannel *sch)
{
 struct ccw_device *cdev;
 unsigned long flags;

 cdev = sch_get_cdev(sch);
 if (!cdev)
  goto out_free;
 io_subchannel_quiesce(sch);

 spin_lock_irqsave(cdev->ccwlock, flags);
 sch_set_cdev(sch, ((void*)0));
 cdev->private->state = DEV_STATE_NOT_OPER;
 spin_unlock_irqrestore(cdev->ccwlock, flags);
 ccw_device_unregister(cdev);
out_free:
 kfree(sch->private);
 sysfs_remove_group(&sch->dev.kobj, &io_subchannel_attr_group);
 return 0;
}
