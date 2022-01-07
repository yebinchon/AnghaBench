
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcxp_wqe_s {int alloc_cbarg; int (* alloc_cbfn ) (int ,struct bfa_fcxp_s*) ;int rsp_sglen_cbfn; int rsp_sga_cbfn; int req_sglen_cbfn; int req_sga_cbfn; int nrsp_sgles; int nreq_sgles; int bfa; int caller; } ;
struct bfa_fcxp_s {int qe; scalar_t__ req_rsp; int fcxp_tag; struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {int fcxp_rsp_free_q; int fcxp_req_free_q; int fcxp_active_q; int bfa; int rsp_wait_q; int req_wait_q; } ;


 int WARN_ON (int) ;
 int bfa_fcxp_init (struct bfa_fcxp_s*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int bfa_q_deq (int *,struct bfa_fcxp_wqe_s**) ;
 int bfa_q_is_on_q (int *,struct bfa_fcxp_s*) ;
 int bfa_trc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int stub1 (int ,struct bfa_fcxp_s*) ;

__attribute__((used)) static void
bfa_fcxp_put(struct bfa_fcxp_s *fcxp)
{
 struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;
 struct bfa_fcxp_wqe_s *wqe;

 if (fcxp->req_rsp)
  bfa_q_deq(&mod->req_wait_q, &wqe);
 else
  bfa_q_deq(&mod->rsp_wait_q, &wqe);

 if (wqe) {
  bfa_trc(mod->bfa, fcxp->fcxp_tag);

  bfa_fcxp_init(fcxp, wqe->caller, wqe->bfa, wqe->nreq_sgles,
   wqe->nrsp_sgles, wqe->req_sga_cbfn,
   wqe->req_sglen_cbfn, wqe->rsp_sga_cbfn,
   wqe->rsp_sglen_cbfn);

  wqe->alloc_cbfn(wqe->alloc_cbarg, fcxp);
  return;
 }

 WARN_ON(!bfa_q_is_on_q(&mod->fcxp_active_q, fcxp));
 list_del(&fcxp->qe);

 if (fcxp->req_rsp)
  list_add_tail(&fcxp->qe, &mod->fcxp_req_free_q);
 else
  list_add_tail(&fcxp->qe, &mod->fcxp_rsp_free_q);
}
