
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 char SNS1_PERM_ERR ;
 char SNS2_CORRECTABLE ;
 char SNS2_ENV_DATA_PRESENT ;
 struct dasd_ccw_req* dasd_3990_erp_action_1 (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_4 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_5 (struct dasd_ccw_req*) ;
 int dev_emerg (int *,char*) ;
 int panic (char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_data_check(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;

 erp->function = dasd_3990_erp_data_check;

 if (sense[2] & SNS2_CORRECTABLE) {


  dev_emerg(&device->cdev->dev,
       "Data recovered during retry with PCI "
       "fetch mode active\n");


  panic("No way to inform application about the possibly "
        "incorrect data");

 } else if (sense[2] & SNS2_ENV_DATA_PRESENT) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Uncorrectable data check recovered secondary "
       "addr of duplex pair");

  erp = dasd_3990_erp_action_4(erp, sense);

 } else if (sense[1] & SNS1_PERM_ERR) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Uncorrectable data check with internal "
       "retry exhausted");

  erp = dasd_3990_erp_action_1(erp);

 } else {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Uncorrectable data check with retry count "
       "exhausted...");

  erp = dasd_3990_erp_action_5(erp);
 }

 return erp;

}
