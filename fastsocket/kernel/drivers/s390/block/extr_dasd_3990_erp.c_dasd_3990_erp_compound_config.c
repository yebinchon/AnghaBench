
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {void (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 char DASD_SENSE_BIT_1 ;
 char DASD_SENSE_BIT_2 ;
 int dev_err (int *,char*,char*) ;

__attribute__((used)) static void
dasd_3990_erp_compound_config(struct dasd_ccw_req * erp, char *sense)
{

 if ((sense[25] & DASD_SENSE_BIT_1) && (sense[26] & DASD_SENSE_BIT_2)) {




  struct dasd_device *device = erp->startdev;
  dev_err(&device->cdev->dev,
   "An error occurred in the DASD device driver, "
   "reason=%s\n", "05");

 }

 erp->function = dasd_3990_erp_compound_config;

}
