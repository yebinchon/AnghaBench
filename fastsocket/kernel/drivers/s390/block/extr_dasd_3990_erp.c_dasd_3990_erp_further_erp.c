
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
struct dasd_ccw_req {scalar_t__ function; int status; int irb; struct dasd_device* startdev; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_CQR_FAILED ;
 char DASD_SENSE_BIT_0 ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char) ;
 int DBF_WARNING ;
 struct dasd_ccw_req* dasd_3990_erp_DCTL (struct dasd_ccw_req*,int) ;
 struct dasd_ccw_req* dasd_3990_erp_action_1 (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_1_sec (struct dasd_ccw_req*) ;
 scalar_t__ dasd_3990_erp_action_4 ;
 scalar_t__ dasd_3990_erp_action_5 ;
 scalar_t__ dasd_3990_erp_bus_out ;
 struct dasd_ccw_req* dasd_3990_erp_compound (struct dasd_ccw_req*,char*) ;
 scalar_t__ dasd_3990_erp_compound_code ;
 scalar_t__ dasd_3990_erp_compound_config ;
 scalar_t__ dasd_3990_erp_compound_path ;
 scalar_t__ dasd_3990_erp_compound_retry ;
 char* dasd_get_sense (int *) ;
 int dev_err (int *,char*,struct dasd_ccw_req*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_further_erp(struct dasd_ccw_req *erp)
{

 struct dasd_device *device = erp->startdev;
 char *sense = dasd_get_sense(&erp->irb);


 if ((erp->function == dasd_3990_erp_bus_out) ||
     (erp->function == dasd_3990_erp_action_1) ||
     (erp->function == dasd_3990_erp_action_4)) {

  erp = dasd_3990_erp_action_1(erp);

 } else if (erp->function == dasd_3990_erp_action_1_sec) {
  erp = dasd_3990_erp_action_1_sec(erp);
 } else if (erp->function == dasd_3990_erp_action_5) {



  erp = dasd_3990_erp_action_1(erp);

  if (sense && !(sense[2] & DASD_SENSE_BIT_0)) {




   switch (sense[25]) {
   case 0x17:
   case 0x57:{
     erp = dasd_3990_erp_DCTL(erp, 0x20);
     break;
    }
   case 0x18:
   case 0x58:{
     erp = dasd_3990_erp_DCTL(erp, 0x40);
     break;
    }
   case 0x19:
   case 0x59:{
     erp = dasd_3990_erp_DCTL(erp, 0x80);
     break;
    }
   default:
    DBF_DEV_EVENT(DBF_WARNING, device,
         "invalid subcommand modifier 0x%x "
         "for Diagnostic Control Command",
         sense[25]);
   }
  }


 } else if (sense &&
     ((erp->function == dasd_3990_erp_compound_retry) ||
      (erp->function == dasd_3990_erp_compound_path) ||
      (erp->function == dasd_3990_erp_compound_code) ||
      (erp->function == dasd_3990_erp_compound_config))) {

  erp = dasd_3990_erp_compound(erp, sense);

 } else {




  dev_err(&device->cdev->dev,
   "ERP %p has run out of retries and failed\n", erp);

  erp->status = DASD_CQR_FAILED;
 }

 return erp;

}
