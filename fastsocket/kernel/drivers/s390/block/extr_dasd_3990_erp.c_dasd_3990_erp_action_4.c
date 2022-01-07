
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {scalar_t__ function; char* retries; int status; struct dasd_device* startdev; } ;


 int DASD_CQR_FILLED ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_INFO ;
 int HZ ;
 int dasd_3990_erp_block_queue (struct dasd_ccw_req*,int) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_action_4(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;




 if (erp->function != dasd_3990_erp_action_4) {

  DBF_DEV_EVENT(DBF_INFO, device, "%s",
       "dasd_3990_erp_action_4: first time retry");

  erp->retries = 256;
  erp->function = dasd_3990_erp_action_4;

 } else {
  if (sense && (sense[25] == 0x1D)) {

   DBF_DEV_EVENT(DBF_INFO, device,
        "waiting for state change pending "
        "interrupt, %d retries left",
        erp->retries);

   dasd_3990_erp_block_queue(erp, 30*HZ);

  } else if (sense && (sense[25] == 0x1E)) {
   DBF_DEV_EVENT(DBF_INFO, device,
        "busy - redriving request later, "
        "%d retries left",
        erp->retries);
                        dasd_3990_erp_block_queue(erp, HZ);
  } else {

   DBF_DEV_EVENT(DBF_INFO, device,
         "redriving request immediately, "
         "%d retries left",
         erp->retries);
   erp->status = DASD_CQR_FILLED;
  }
 }

 return erp;

}
