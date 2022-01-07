
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_fcxp_send_req_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcxp_s {int reqq_waiting; TYPE_1__* fcxp_mod; } ;
struct TYPE_2__ {struct bfa_s* bfa; } ;


 int BFA_FALSE ;
 int BFA_REQQ_FCXP ;
 int bfa_fcxp_queue (struct bfa_fcxp_s*,struct bfi_fcxp_send_req_s*) ;
 struct bfi_fcxp_send_req_s* bfa_reqq_next (struct bfa_s*,int ) ;

__attribute__((used)) static void
bfa_fcxp_qresume(void *cbarg)
{
 struct bfa_fcxp_s *fcxp = cbarg;
 struct bfa_s *bfa = fcxp->fcxp_mod->bfa;
 struct bfi_fcxp_send_req_s *send_req;

 fcxp->reqq_waiting = BFA_FALSE;
 send_req = bfa_reqq_next(bfa, BFA_REQQ_FCXP);
 bfa_fcxp_queue(fcxp, send_req);
}
