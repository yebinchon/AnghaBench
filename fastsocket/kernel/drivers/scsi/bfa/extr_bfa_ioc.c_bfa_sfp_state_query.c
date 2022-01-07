
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_sfp_req_s {scalar_t__ memtype; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_sfp_s {scalar_t__ state; int state_query_lock; int lock; TYPE_1__ mbcmd; } ;


 scalar_t__ BFA_SFP_STATE_INIT ;
 int BFI_SFP_MEM_ALL ;
 int WARN_ON (int) ;
 int bfa_sfp_getdata (struct bfa_sfp_s*,int ) ;
 int bfa_trc (struct bfa_sfp_s*,scalar_t__) ;

__attribute__((used)) static void
bfa_sfp_state_query(struct bfa_sfp_s *sfp)
{
 struct bfi_sfp_req_s *req = (struct bfi_sfp_req_s *)sfp->mbcmd.msg;


 WARN_ON(sfp->state != BFA_SFP_STATE_INIT);
 WARN_ON(sfp->state_query_lock != 0);
 bfa_trc(sfp, sfp->state);

 sfp->state_query_lock = 1;
 req->memtype = 0;

 if (!sfp->lock)
  bfa_sfp_getdata(sfp, BFI_SFP_MEM_ALL);
}
