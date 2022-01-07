
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scsw; } ;
struct dasd_ccw_req {scalar_t__ startdev; TYPE_1__ irb; } ;


 int SCHN_STAT_CHN_CTRL_CHK ;
 int SCHN_STAT_INTF_CTRL_CHK ;
 char* dasd_get_sense (TYPE_1__*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int scsw_cstat (int *) ;

__attribute__((used)) static int dasd_3990_erp_error_match(struct dasd_ccw_req *cqr1,
         struct dasd_ccw_req *cqr2)
{
 char *sense1, *sense2;

 if (cqr1->startdev != cqr2->startdev)
  return 0;

 sense1 = dasd_get_sense(&cqr1->irb);
 sense2 = dasd_get_sense(&cqr2->irb);


 if (!sense1 != !sense2)
  return 0;

 if (!sense1 && !sense2) {
  if ((scsw_cstat(&cqr1->irb.scsw) & (SCHN_STAT_INTF_CTRL_CHK |
          SCHN_STAT_CHN_CTRL_CHK)) ==
      (scsw_cstat(&cqr2->irb.scsw) & (SCHN_STAT_INTF_CTRL_CHK |
          SCHN_STAT_CHN_CTRL_CHK)))
   return 1;
 }

 if (!(sense1 && sense2 &&
       (memcmp(sense1, sense2, 3) == 0) &&
       (sense1[27] == sense2[27]) &&
       (sense1[25] == sense2[25]))) {

  return 0;
 }

 return 1;

}
