
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union bfi_itn_i2h_msg_u {TYPE_1__* create_rsp; struct bfi_msg_s* msg; } ;
struct bfi_msg_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_itn_s {int (* isr ) (struct bfa_s*,struct bfi_msg_s*) ;} ;
struct bfa_fcp_mod_s {int dummy; } ;
struct TYPE_2__ {int bfa_handle; } ;


 struct bfa_fcp_mod_s* BFA_FCP_MOD (struct bfa_s*) ;
 struct bfa_itn_s* BFA_ITN_FROM_TAG (struct bfa_fcp_mod_s*,int ) ;
 int WARN_ON (int) ;
 int stub1 (struct bfa_s*,struct bfi_msg_s*) ;

void
bfa_itn_isr(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 struct bfa_fcp_mod_s *fcp = BFA_FCP_MOD(bfa);
 union bfi_itn_i2h_msg_u msg;
 struct bfa_itn_s *itn;

 msg.msg = m;
 itn = BFA_ITN_FROM_TAG(fcp, msg.create_rsp->bfa_handle);

 if (itn->isr)
  itn->isr(bfa, m);
 else
  WARN_ON(1);
}
