
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct bfi_msg_s {int dummy; } ;
struct bfi_ioim_rsp_s {int io_status; int reuse_io_tag; int abort_tag; int io_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_ioim_s {scalar_t__ iotag; int abort_tag; int itnim; int bfa; TYPE_1__* iosp; } ;
struct bfa_fcpim_s {int dummy; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {struct bfi_msg_s comp_rspmsg; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;
 struct bfa_ioim_s* BFA_IOIM_FROM_TAG (struct bfa_fcpim_s*,scalar_t__) ;
 int BFA_IOIM_SM_ABORT_COMP ;
 int BFA_IOIM_SM_ABORT_DONE ;
 int BFA_IOIM_SM_COMP ;
 int BFA_IOIM_SM_COMP_UTAG ;
 int BFA_IOIM_SM_DONE ;
 int BFA_IOIM_SM_FREE ;
 int BFA_IOIM_SM_SQRETRY ;
 int WARN_ON (int) ;
 scalar_t__ be16_to_cpu (int ) ;
 int bfa_ioim_sm_active ;
 scalar_t__ bfa_sm_cmp_state (struct bfa_ioim_s*,int ) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int) ;
 int bfa_stats (int ,int ) ;
 int bfa_trc (int ,int) ;
 int iocom_hostabrts ;
 int iocom_proto_err ;
 int iocom_res_free ;
 int iocom_sqer_needed ;
 int iocom_utags ;
 int iocomp_aborted ;
 int iocomp_ok ;
 int iocomp_timedout ;

void
bfa_ioim_isr(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);
 struct bfi_ioim_rsp_s *rsp = (struct bfi_ioim_rsp_s *) m;
 struct bfa_ioim_s *ioim;
 u16 iotag;
 enum bfa_ioim_event evt = BFA_IOIM_SM_COMP;

 iotag = be16_to_cpu(rsp->io_tag);

 ioim = BFA_IOIM_FROM_TAG(fcpim, iotag);
 WARN_ON(ioim->iotag != iotag);

 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_trc(ioim->bfa, rsp->io_status);
 bfa_trc(ioim->bfa, rsp->reuse_io_tag);

 if (bfa_sm_cmp_state(ioim, bfa_ioim_sm_active))
  ioim->iosp->comp_rspmsg = *m;

 switch (rsp->io_status) {
 case 133:
  bfa_stats(ioim->itnim, iocomp_ok);
  if (rsp->reuse_io_tag == 0)
   evt = BFA_IOIM_SM_DONE;
  else
   evt = BFA_IOIM_SM_COMP;
  break;

 case 129:
  bfa_stats(ioim->itnim, iocomp_timedout);
 case 135:
  rsp->io_status = 135;
  bfa_stats(ioim->itnim, iocomp_aborted);
  if (rsp->reuse_io_tag == 0)
   evt = BFA_IOIM_SM_DONE;
  else
   evt = BFA_IOIM_SM_COMP;
  break;

 case 132:
  bfa_stats(ioim->itnim, iocom_proto_err);
  WARN_ON(!rsp->reuse_io_tag);
  evt = BFA_IOIM_SM_COMP;
  break;

 case 130:
  bfa_stats(ioim->itnim, iocom_sqer_needed);
  WARN_ON(rsp->reuse_io_tag != 0);
  evt = BFA_IOIM_SM_SQRETRY;
  break;

 case 131:
  bfa_stats(ioim->itnim, iocom_res_free);
  evt = BFA_IOIM_SM_FREE;
  break;

 case 134:
  bfa_stats(ioim->itnim, iocom_hostabrts);
  if (rsp->abort_tag != ioim->abort_tag) {
   bfa_trc(ioim->bfa, rsp->abort_tag);
   bfa_trc(ioim->bfa, ioim->abort_tag);
   return;
  }

  if (rsp->reuse_io_tag)
   evt = BFA_IOIM_SM_ABORT_COMP;
  else
   evt = BFA_IOIM_SM_ABORT_DONE;
  break;

 case 128:
  bfa_stats(ioim->itnim, iocom_utags);
  evt = BFA_IOIM_SM_COMP_UTAG;
  break;

 default:
  WARN_ON(1);
 }

 bfa_sm_send_event(ioim, evt);
}
