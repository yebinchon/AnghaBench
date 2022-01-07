
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class_id; } ;
struct i2o_device {int device; TYPE_1__ lct_data; } ;




 int i2o_scsi_probe (int *) ;

__attribute__((used)) static void i2o_scsi_notify_device_add(struct i2o_device *i2o_dev)
{
 switch (i2o_dev->lct_data.class_id) {
 case 129:
 case 128:
  i2o_scsi_probe(&i2o_dev->device);
  break;

 default:
  break;
 }
}
