
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_CQR_FAILED ;
 char DASD_SENSE_BIT_0 ;
 char DASD_SIM_SENSE ;
 int DBF_DEBUG ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 struct dasd_ccw_req* dasd_3990_erp_action_10_32 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_1B_32 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_4 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_cleanup (struct dasd_ccw_req*,int ) ;
 int dasd_3990_erp_compound_retry (struct dasd_ccw_req*,char*) ;
 int dasd_3990_erp_handle_sim (struct dasd_device*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_int_req (struct dasd_ccw_req*) ;
 int dev_emerg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int panic (char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_inspect_32(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;

 erp->function = dasd_3990_erp_inspect_32;


 if ((sense[6] & DASD_SIM_SENSE) == DASD_SIM_SENSE)
  dasd_3990_erp_handle_sim(device, sense);

 if (sense[25] & DASD_SENSE_BIT_0) {


  dasd_3990_erp_compound_retry(erp, sense);

 } else {


  switch (sense[25]) {

  case 0x00:
   DBF_DEV_EVENT(DBF_DEBUG, device, "%s",
        "ERP called for successful request"
        " - just retry");
   break;

  case 0x01:
   dev_err(&device->cdev->dev,
        "ERP failed for the DASD\n");

   erp = dasd_3990_erp_cleanup(erp, DASD_CQR_FAILED);
   break;

  case 0x02:
  case 0x03:
   erp = dasd_3990_erp_int_req(erp);
   break;

  case 0x0F:

   dev_err(&device->cdev->dev, "An error occurred in the "
    "DASD device driver, reason=%s\n", "08");

   erp = dasd_3990_erp_cleanup(erp, DASD_CQR_FAILED);
   break;

  case 0x10:
   erp = dasd_3990_erp_action_10_32(erp, sense);
   break;

  case 0x15:


   dev_err(&device->cdev->dev,
    "An error occurred in the DASD device driver, "
    "reason=%s\n", "07");

   erp = dasd_3990_erp_cleanup(erp, DASD_CQR_FAILED);
   break;

  case 0x1B:

   erp = dasd_3990_erp_action_1B_32(erp, sense);
   break;

  case 0x1C:
   dev_emerg(&device->cdev->dev,
        "Data recovered during retry with PCI "
        "fetch mode active\n");


   panic
       ("Invalid data - No way to inform application "
        "about the possibly incorrect data");
   break;

  case 0x1D:
   DBF_DEV_EVENT(DBF_WARNING, device, "%s",
        "A State change pending condition exists "
        "for the subsystem or device");

   erp = dasd_3990_erp_action_4(erp, sense);
   break;

  case 0x1E:
   DBF_DEV_EVENT(DBF_WARNING, device, "%s",
        "Busy condition exists "
        "for the subsystem or device");
                        erp = dasd_3990_erp_action_4(erp, sense);
   break;

  default:
   break;
  }
 }

 return erp;

}
