
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {TYPE_1__* fcs; } ;
struct bfa_fcs_rpf_s {int rpsc_retries; int fcxp_wqe; struct bfa_fcs_rport_s* rport; } ;
typedef enum rpf_event { ____Placeholder_rpf_event } rpf_event ;
struct TYPE_3__ {int bfa; } ;




 int bfa_fcs_rpf_sm_offline ;
 int bfa_fcs_rpf_sm_rpsc ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rpf_sm_rpsc_sending(struct bfa_fcs_rpf_s *rpf, enum rpf_event event)
{
 struct bfa_fcs_rport_s *rport = rpf->rport;

 bfa_trc(rport->fcs, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_rpsc);
  break;

 case 128:
  bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_offline);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rpf->fcxp_wqe);
  rpf->rpsc_retries = 0;
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
