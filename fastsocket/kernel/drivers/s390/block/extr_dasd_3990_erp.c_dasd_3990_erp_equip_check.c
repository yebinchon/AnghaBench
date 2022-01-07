
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
 char SNS1_WRITE_INHIBITED ;
 char SNS2_ENV_DATA_PRESENT ;
 struct dasd_ccw_req* dasd_3990_erp_action_1 (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_4 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_5 (struct dasd_ccw_req*) ;
 int dasd_3990_handle_env_data (struct dasd_ccw_req*,char*) ;
 int dev_err (int *,char*,char*) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_equip_check(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;

 erp->function = dasd_3990_erp_equip_check;

 if (sense[1] & SNS1_WRITE_INHIBITED) {
  dev_info(&device->cdev->dev,
       "Write inhibited path encountered\n");



  dev_err(&device->cdev->dev, "An error occurred in the DASD "
   "device driver, reason=%s\n", "04");

  erp = dasd_3990_erp_action_1(erp);

 } else if (sense[2] & SNS2_ENV_DATA_PRESENT) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Equipment Check - " "environmental data present");

  dasd_3990_handle_env_data(erp, sense);

  erp = dasd_3990_erp_action_4(erp, sense);

 } else if (sense[1] & SNS1_PERM_ERR) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Equipment Check - retry exhausted or "
       "undesirable");

  erp = dasd_3990_erp_action_1(erp);

 } else {


  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Equipment check or processing error");

  erp = dasd_3990_erp_action_5(erp);
 }
 return erp;

}
