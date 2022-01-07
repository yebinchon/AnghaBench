
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_tskim_req_s {int mh; int tm_flags; int lun; int t_secs; int itn_fhdl; int tsk_tag; } ;
struct bfa_tskim_s {int bfa; int tm_cmnd; int lun; int tsecs; struct bfa_itnim_s* itnim; int tsk_tag; } ;
struct bfa_itnim_s {int reqq; TYPE_1__* rport; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int fw_handle; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_MC_TSKIM ;
 int BFI_TSKIM_H2I_TM_REQ ;
 int bfa_fn_lpu (int ) ;
 struct bfi_tskim_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_tskim_send(struct bfa_tskim_s *tskim)
{
 struct bfa_itnim_s *itnim = tskim->itnim;
 struct bfi_tskim_req_s *m;




 m = bfa_reqq_next(tskim->bfa, itnim->reqq);
 if (!m)
  return BFA_FALSE;




 bfi_h2i_set(m->mh, BFI_MC_TSKIM, BFI_TSKIM_H2I_TM_REQ,
   bfa_fn_lpu(tskim->bfa));

 m->tsk_tag = cpu_to_be16(tskim->tsk_tag);
 m->itn_fhdl = tskim->itnim->rport->fw_handle;
 m->t_secs = tskim->tsecs;
 m->lun = tskim->lun;
 m->tm_flags = tskim->tm_cmnd;




 bfa_reqq_produce(tskim->bfa, itnim->reqq, m->mh);
 return BFA_TRUE;
}
