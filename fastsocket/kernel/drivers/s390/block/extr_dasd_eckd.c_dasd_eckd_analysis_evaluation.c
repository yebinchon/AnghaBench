
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ status; int irb; } ;


 scalar_t__ DASD_CQR_DONE ;
 scalar_t__ DASD_CQR_FAILED ;
 scalar_t__ DASD_CQR_NEED_ERP ;
 int INIT_CQR_ERROR ;
 int INIT_CQR_OK ;
 int INIT_CQR_UNFORMATTED ;
 char SNS1_NO_REC_FOUND ;
 char* dasd_get_sense (int *) ;

__attribute__((used)) static int dasd_eckd_analysis_evaluation(struct dasd_ccw_req *init_cqr)
{
 char *sense;
 if (init_cqr->status == DASD_CQR_DONE)
  return INIT_CQR_OK;
 else if (init_cqr->status == DASD_CQR_NEED_ERP ||
   init_cqr->status == DASD_CQR_FAILED) {
  sense = dasd_get_sense(&init_cqr->irb);
  if (sense && (sense[1] & SNS1_NO_REC_FOUND))
   return INIT_CQR_UNFORMATTED;
  else
   return INIT_CQR_ERROR;
 } else
  return INIT_CQR_ERROR;
}
