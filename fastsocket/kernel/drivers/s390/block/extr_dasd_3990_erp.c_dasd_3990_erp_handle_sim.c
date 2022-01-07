
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct TYPE_2__ {int dev; } ;


 char DASD_SIM_LOG ;
 char DASD_SIM_MSG_TO_OP ;
 int dev_err (int *,char*,char,char,char,char) ;
 int dev_warn (int *,char*,char,char,char,char) ;

void
dasd_3990_erp_handle_sim(struct dasd_device *device, char *sense)
{

 if ((sense[24] & DASD_SIM_MSG_TO_OP) || (sense[1] & 0x10)) {

  dev_err(&device->cdev->dev, "SIM - SRC: "
       "%02x%02x%02x%02x\n", sense[22],
       sense[23], sense[11], sense[12]);
 } else if (sense[24] & DASD_SIM_LOG) {

  dev_warn(&device->cdev->dev, "log SIM - SRC: "
       "%02x%02x%02x%02x\n", sense[22],
       sense[23], sense[11], sense[12]);
 }
}
