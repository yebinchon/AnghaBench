
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcxp_s {int rsp_fchs; int residue_len; int rsp_len; int rsp_status; int send_cbarg; int caller; int (* send_cbfn ) (int ,struct bfa_fcxp_s*,int ,int ,int ,int ,int *) ;} ;
typedef scalar_t__ bfa_boolean_t ;


 int bfa_fcxp_free (struct bfa_fcxp_s*) ;
 int stub1 (int ,struct bfa_fcxp_s*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
__bfa_fcxp_send_cbfn(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_fcxp_s *fcxp = cbarg;

 if (complete) {
  fcxp->send_cbfn(fcxp->caller, fcxp, fcxp->send_cbarg,
    fcxp->rsp_status, fcxp->rsp_len,
    fcxp->residue_len, &fcxp->rsp_fchs);
 } else {
  bfa_fcxp_free(fcxp);
 }
}
