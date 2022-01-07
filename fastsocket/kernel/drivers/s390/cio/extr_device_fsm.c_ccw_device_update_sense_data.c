
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dev_model; int dev_type; int cu_model; int cu_type; } ;
struct ccw_device {TYPE_1__* private; TYPE_3__ id; } ;
struct TYPE_5__ {int dev_model; int dev_type; int cu_model; int cu_type; } ;
struct TYPE_4__ {TYPE_2__ senseid; } ;


 int memset (TYPE_3__*,int ,int) ;

void ccw_device_update_sense_data(struct ccw_device *cdev)
{
 memset(&cdev->id, 0, sizeof(cdev->id));
 cdev->id.cu_type = cdev->private->senseid.cu_type;
 cdev->id.cu_model = cdev->private->senseid.cu_model;
 cdev->id.dev_type = cdev->private->senseid.dev_type;
 cdev->id.dev_model = cdev->private->senseid.dev_model;
}
