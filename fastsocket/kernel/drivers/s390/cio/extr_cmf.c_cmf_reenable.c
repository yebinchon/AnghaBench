
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* set ) (struct ccw_device*,int) ;int (* reset ) (struct ccw_device*) ;} ;


 TYPE_1__* cmbops ;
 int stub1 (struct ccw_device*) ;
 int stub2 (struct ccw_device*,int) ;

int cmf_reenable(struct ccw_device *cdev)
{
 cmbops->reset(cdev);
 return cmbops->set(cdev, 2);
}
