
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {int retries; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_CQR_FAILED ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 char SNS1_WRITE_INHIBITED ;
 char SNS2_ENV_DATA_PRESENT ;
 struct dasd_ccw_req* dasd_3990_erp_cleanup (struct dasd_ccw_req*,int ) ;
 int dasd_3990_handle_env_data (struct dasd_ccw_req*,char*) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_com_rej(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;

 erp->function = dasd_3990_erp_com_rej;


 if (sense[2] & SNS2_ENV_DATA_PRESENT) {

  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "Command Reject - environmental data present");

  dasd_3990_handle_env_data(erp, sense);

  erp->retries = 5;

 } else if (sense[1] & SNS1_WRITE_INHIBITED) {
  dev_err(&device->cdev->dev, "An I/O request was rejected"
   " because writing is inhibited\n");
  erp = dasd_3990_erp_cleanup(erp, DASD_CQR_FAILED);
 } else {


  dev_err(&device->cdev->dev, "An error occurred in the DASD "
   "device driver, reason=%s\n", "09");

  erp = dasd_3990_erp_cleanup(erp, DASD_CQR_FAILED);
 }

 return erp;

}
