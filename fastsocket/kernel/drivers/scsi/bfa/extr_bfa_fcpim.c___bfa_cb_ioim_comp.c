
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct bfi_ioim_rsp_s {scalar_t__ io_status; scalar_t__ scsi_status; scalar_t__ resid_flags; int residue; scalar_t__ sns_len; } ;
struct bfa_ioim_s {int dio; TYPE_3__* bfa; int itnim; int iotag; TYPE_2__* fcpim; TYPE_1__* iosp; } ;
typedef int s32 ;
typedef int bfa_boolean_t ;
struct TYPE_6__ {int bfad; } ;
struct TYPE_5__ {int fcp; } ;
struct TYPE_4__ {int comp_rspmsg; } ;


 int BFA_IOIM_SM_HCB ;
 scalar_t__* BFA_SNSINFO_FROM_TAG (int ,int ) ;
 scalar_t__ BFI_IOIM_STS_OK ;
 scalar_t__ FCP_RESID_OVER ;
 scalar_t__ FCP_RESID_UNDER ;
 scalar_t__ SCSI_STATUS_CHECK_CONDITION ;
 int be32_to_cpu (int ) ;
 int bfa_cb_ioim_done (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int ) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int iocomp_overrun ;
 int iocomp_underrun ;

__attribute__((used)) static void
__bfa_cb_ioim_comp(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_ioim_s *ioim = cbarg;
 struct bfi_ioim_rsp_s *m;
 u8 *snsinfo = ((void*)0);
 u8 sns_len = 0;
 s32 residue = 0;

 if (!complete) {
  bfa_sm_send_event(ioim, BFA_IOIM_SM_HCB);
  return;
 }

 m = (struct bfi_ioim_rsp_s *) &ioim->iosp->comp_rspmsg;
 if (m->io_status == BFI_IOIM_STS_OK) {



  if ((m->scsi_status == SCSI_STATUS_CHECK_CONDITION) &&
     m->sns_len) {
   sns_len = m->sns_len;
   snsinfo = BFA_SNSINFO_FROM_TAG(ioim->fcpim->fcp,
      ioim->iotag);
  }




  if (m->resid_flags == FCP_RESID_UNDER) {
   residue = be32_to_cpu(m->residue);
   bfa_stats(ioim->itnim, iocomp_underrun);
  }
  if (m->resid_flags == FCP_RESID_OVER) {
   residue = be32_to_cpu(m->residue);
   residue = -residue;
   bfa_stats(ioim->itnim, iocomp_overrun);
  }
 }

 bfa_cb_ioim_done(ioim->bfa->bfad, ioim->dio, m->io_status,
     m->scsi_status, sns_len, snsinfo, residue);
}
