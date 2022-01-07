
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct ccw_device {struct ccw_device* private; TYPE_1__ dev; } ;


 int kfree (struct ccw_device*) ;
 int put_device (int ) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static void
ccw_device_release(struct device *dev)
{
 struct ccw_device *cdev;

 cdev = to_ccwdev(dev);

 put_device(cdev->dev.parent);
 kfree(cdev->private);
 kfree(cdev);
}
