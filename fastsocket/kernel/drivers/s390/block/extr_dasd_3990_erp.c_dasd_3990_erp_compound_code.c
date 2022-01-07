
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int retries; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;} ;


 char DASD_SENSE_BIT_2 ;
 int HZ ;
 struct dasd_ccw_req* dasd_3990_erp_DCTL (struct dasd_ccw_req*,int) ;
 int dasd_3990_erp_block_queue (struct dasd_ccw_req*,int) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_compound_code(struct dasd_ccw_req * erp, char *sense)
{

 if (sense[25] & DASD_SENSE_BIT_2) {

  switch (sense[28]) {
  case 0x17:


   erp = dasd_3990_erp_DCTL(erp, 0x20);
   break;

  case 0x25:

   erp->retries = 1;

   dasd_3990_erp_block_queue (erp, 5*HZ);
   break;

  default:

   break;
  }
 }

 erp->function = dasd_3990_erp_compound_code;

 return erp;

}
