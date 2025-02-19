
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcw {scalar_t__ cmd_code; } ;
struct tccb {int * tca; } ;
struct dcw {int * cd; } ;
struct dasd_ccw_req {int cpmode; struct PFX_eckd_data* data; struct tcw* cpaddr; } ;
struct ccw1 {scalar_t__ cmd_code; } ;
struct TYPE_2__ {scalar_t__ hyper_pav; scalar_t__ verify_base; } ;
struct PFX_eckd_data {TYPE_1__ validity; } ;


 scalar_t__ DASD_ECKD_CCW_PFX ;
 struct tccb* tcw_get_tccb (struct tcw*) ;

void dasd_eckd_reset_ccw_to_base_io(struct dasd_ccw_req *cqr)
{
 struct ccw1 *ccw;
 struct PFX_eckd_data *pfxdata;
 struct tcw *tcw;
 struct tccb *tccb;
 struct dcw *dcw;

 if (cqr->cpmode == 1) {
  tcw = cqr->cpaddr;
  tccb = tcw_get_tccb(tcw);
  dcw = (struct dcw *)&tccb->tca[0];
  pfxdata = (struct PFX_eckd_data *)&dcw->cd[0];
  pfxdata->validity.verify_base = 0;
  pfxdata->validity.hyper_pav = 0;
 } else {
  ccw = cqr->cpaddr;
  pfxdata = cqr->data;
  if (ccw->cmd_code == DASD_ECKD_CCW_PFX) {
   pfxdata->validity.verify_base = 0;
   pfxdata->validity.hyper_pav = 0;
  }
 }
}
