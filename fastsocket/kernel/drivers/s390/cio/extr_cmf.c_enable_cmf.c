
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int (* alloc ) (struct ccw_device*) ;int (* set ) (struct ccw_device*,int) ;int (* free ) (struct ccw_device*) ;int attr_group; int (* reset ) (struct ccw_device*) ;} ;


 TYPE_2__* cmbops ;
 int stub1 (struct ccw_device*) ;
 int stub2 (struct ccw_device*) ;
 int stub3 (struct ccw_device*,int) ;
 int stub4 (struct ccw_device*) ;
 int stub5 (struct ccw_device*,int) ;
 int stub6 (struct ccw_device*) ;
 int sysfs_create_group (int *,int ) ;

int enable_cmf(struct ccw_device *cdev)
{
 int ret;

 ret = cmbops->alloc(cdev);
 cmbops->reset(cdev);
 if (ret)
  return ret;
 ret = cmbops->set(cdev, 2);
 if (ret) {
  cmbops->free(cdev);
  return ret;
 }
 ret = sysfs_create_group(&cdev->dev.kobj, cmbops->attr_group);
 if (!ret)
  return 0;
 cmbops->set(cdev, 0);
 cmbops->free(cdev);
 return ret;
}
