
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_rport_s {int rport_tag; } ;
struct bfa_itn_s {void (* isr ) (struct bfa_s*,struct bfi_msg_s*) ;} ;
struct bfa_fcp_mod_s {int dummy; } ;


 struct bfa_fcp_mod_s* BFA_FCP_MOD (struct bfa_s*) ;
 struct bfa_itn_s* BFA_ITN_FROM_TAG (struct bfa_fcp_mod_s*,int ) ;

void
bfa_itn_create(struct bfa_s *bfa, struct bfa_rport_s *rport,
  void (*isr)(struct bfa_s *bfa, struct bfi_msg_s *m))
{
 struct bfa_fcp_mod_s *fcp = BFA_FCP_MOD(bfa);
 struct bfa_itn_s *itn;

 itn = BFA_ITN_FROM_TAG(fcp, rport->rport_tag);
 itn->isr = isr;
}
