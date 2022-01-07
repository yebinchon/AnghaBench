
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int retries; void (* function ) (struct dasd_ccw_req*,char*) ;} ;


 int BUG () ;

__attribute__((used)) static void
dasd_3990_erp_compound_retry(struct dasd_ccw_req * erp, char *sense)
{

 switch (sense[25] & 0x03) {
 case 0x00:
  erp->retries = 1;
  break;

 case 0x01:
  erp->retries = 2;
  break;

 case 0x02:
  erp->retries = 10;
  break;

 case 0x03:
  erp->retries = 256;
  break;

 default:
  BUG();
 }

 erp->function = dasd_3990_erp_compound_retry;

}
