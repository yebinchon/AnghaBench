
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int sch_no; int ssid; } ;
struct TYPE_11__ {int kobj; } ;
struct subchannel {int lock; TYPE_6__ schid; int private; TYPE_5__ dev; } ;
struct io_subchannel_private {int dummy; } ;
struct TYPE_10__ {int groups; } ;
struct ccw_device {TYPE_3__ dev; TYPE_2__* private; } ;
struct TYPE_8__ {int initialized; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_1__ flags; } ;


 int CIO_MSG_EVENT (int ,char*,int ,int ,int) ;
 scalar_t__ DEV_STATE_BOXED ;
 scalar_t__ DEV_STATE_NOT_OPER ;
 scalar_t__ DEV_STATE_OFFLINE ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int SCH_TODO_UNREG ;
 int ccw_device_register (struct ccw_device*) ;
 int ccwdev_attr_groups ;
 int cio_commit_config (struct subchannel*) ;
 scalar_t__ cio_is_console (TYPE_6__) ;
 int css_sched_sch_todo (struct subchannel*,int ) ;
 int css_schedule_eval (TYPE_6__) ;
 int dev_set_uevent_suppress (TYPE_5__*,int ) ;
 int device_initialize (TYPE_3__*) ;
 int get_device (TYPE_3__*) ;
 int io_subchannel_attr_group ;
 int io_subchannel_init_fields (struct subchannel*) ;
 int kobject_uevent (int *,int ) ;
 int kzalloc (int,int) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int io_subchannel_probe(struct subchannel *sch)
{
 struct ccw_device *cdev;
 int rc;

 if (cio_is_console(sch->schid)) {
  rc = sysfs_create_group(&sch->dev.kobj,
     &io_subchannel_attr_group);
  if (rc)
   CIO_MSG_EVENT(0, "Failed to create io subchannel "
          "attributes for subchannel "
          "0.%x.%04x (rc=%d)\n",
          sch->schid.ssid, sch->schid.sch_no, rc);





  dev_set_uevent_suppress(&sch->dev, 0);
  kobject_uevent(&sch->dev.kobj, KOBJ_ADD);
  cdev = sch_get_cdev(sch);
  cdev->dev.groups = ccwdev_attr_groups;
  device_initialize(&cdev->dev);
  cdev->private->flags.initialized = 1;
  ccw_device_register(cdev);





  if (cdev->private->state != DEV_STATE_NOT_OPER &&
      cdev->private->state != DEV_STATE_OFFLINE &&
      cdev->private->state != DEV_STATE_BOXED)
   get_device(&cdev->dev);
  return 0;
 }
 io_subchannel_init_fields(sch);
 rc = cio_commit_config(sch);
 if (rc)
  goto out_schedule;
 rc = sysfs_create_group(&sch->dev.kobj,
    &io_subchannel_attr_group);
 if (rc)
  goto out_schedule;

 sch->private = kzalloc(sizeof(struct io_subchannel_private),
          GFP_KERNEL | GFP_DMA);
 if (!sch->private)
  goto out_schedule;
 css_schedule_eval(sch->schid);
 return 0;

out_schedule:
 spin_lock_irq(sch->lock);
 css_sched_sch_todo(sch, SCH_TODO_UNREG);
 spin_unlock_irq(sch->lock);
 return 0;
}
