
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_diag_dport_req_s {int req; int mh; void* payload; void* lpcnt; } ;
struct bfa_dport_s {int bfa; int payload; int lpcnt; int reqq_wait; } ;
typedef enum bfi_dport_req { ____Placeholder_bfi_dport_req } bfi_dport_req ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_REQQ_DIAG ;
 int BFA_REQQ_PORT ;
 int BFA_TRUE ;
 int BFI_DIAG_H2I_DPORT ;
 int BFI_DPORT_ENABLE ;
 int BFI_DPORT_START ;
 int BFI_MC_DIAG ;
 int bfa_fn_lpu (int ) ;
 struct bfi_diag_dport_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_dport_send_req(struct bfa_dport_s *dport, enum bfi_dport_req req)
{
 struct bfi_diag_dport_req_s *m;




 m = bfa_reqq_next(dport->bfa, BFA_REQQ_DIAG);
 if (!m) {
  bfa_reqq_wait(dport->bfa, BFA_REQQ_PORT, &dport->reqq_wait);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_DIAG, BFI_DIAG_H2I_DPORT,
      bfa_fn_lpu(dport->bfa));
 m->req = req;
 if ((req == BFI_DPORT_ENABLE) || (req == BFI_DPORT_START)) {
  m->lpcnt = cpu_to_be32(dport->lpcnt);
  m->payload = cpu_to_be32(dport->payload);
 }




 bfa_reqq_produce(dport->bfa, BFA_REQQ_DIAG, m->mh);

 return BFA_TRUE;
}
