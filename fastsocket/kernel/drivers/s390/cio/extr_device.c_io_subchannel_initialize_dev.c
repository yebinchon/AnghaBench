
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct subchannel {int dev; } ;
struct TYPE_7__ {int groups; int release; int * parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_3__ dev; } ;
struct TYPE_5__ {int initialized; } ;
struct TYPE_6__ {TYPE_1__ flags; int todo_work; int onoff; struct ccw_device* cdev; } ;


 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int ccw_device_release ;
 int ccw_device_todo ;
 int ccwdev_attr_groups ;
 int device_initialize (TYPE_3__*) ;
 int get_device (int *) ;
 int put_device (TYPE_3__*) ;

__attribute__((used)) static int io_subchannel_initialize_dev(struct subchannel *sch,
     struct ccw_device *cdev)
{
 cdev->private->cdev = cdev;
 atomic_set(&cdev->private->onoff, 0);
 cdev->dev.parent = &sch->dev;
 cdev->dev.release = ccw_device_release;
 INIT_WORK(&cdev->private->todo_work, ccw_device_todo);
 cdev->dev.groups = ccwdev_attr_groups;

 device_initialize(&cdev->dev);
 if (!get_device(&sch->dev)) {

  put_device(&cdev->dev);
  return -ENODEV;
 }
 cdev->private->flags.initialized = 1;
 return 0;
}
