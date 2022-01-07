
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcxp_wqe_s {int nreq_sgles; int nrsp_sgles; int qe; void* rsp_sglen_cbfn; void* rsp_sga_cbfn; void* req_sglen_cbfn; void* req_sga_cbfn; struct bfa_s* bfa; void* caller; void* alloc_cbarg; int alloc_cbfn; } ;
struct bfa_fcxp_mod_s {int rsp_wait_q; int req_wait_q; int fcxp_rsp_free_q; int fcxp_req_free_q; } ;
typedef void* bfa_fcxp_get_sglen_t ;
typedef void* bfa_fcxp_get_sgaddr_t ;
typedef int bfa_fcxp_alloc_cbfn_t ;
typedef scalar_t__ bfa_boolean_t ;


 struct bfa_fcxp_mod_s* BFA_FCXP_MOD (struct bfa_s*) ;
 int WARN_ON (int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

void
bfa_fcxp_req_rsp_alloc_wait(struct bfa_s *bfa, struct bfa_fcxp_wqe_s *wqe,
        bfa_fcxp_alloc_cbfn_t alloc_cbfn, void *alloc_cbarg,
        void *caller, int nreq_sgles,
        int nrsp_sgles, bfa_fcxp_get_sgaddr_t req_sga_cbfn,
        bfa_fcxp_get_sglen_t req_sglen_cbfn,
        bfa_fcxp_get_sgaddr_t rsp_sga_cbfn,
        bfa_fcxp_get_sglen_t rsp_sglen_cbfn, bfa_boolean_t req)
{
 struct bfa_fcxp_mod_s *mod = BFA_FCXP_MOD(bfa);

 if (req)
  WARN_ON(!list_empty(&mod->fcxp_req_free_q));
 else
  WARN_ON(!list_empty(&mod->fcxp_rsp_free_q));

 wqe->alloc_cbfn = alloc_cbfn;
 wqe->alloc_cbarg = alloc_cbarg;
 wqe->caller = caller;
 wqe->bfa = bfa;
 wqe->nreq_sgles = nreq_sgles;
 wqe->nrsp_sgles = nrsp_sgles;
 wqe->req_sga_cbfn = req_sga_cbfn;
 wqe->req_sglen_cbfn = req_sglen_cbfn;
 wqe->rsp_sga_cbfn = rsp_sga_cbfn;
 wqe->rsp_sglen_cbfn = rsp_sglen_cbfn;

 if (req)
  list_add_tail(&wqe->qe, &mod->req_wait_q);
 else
  list_add_tail(&wqe->qe, &mod->rsp_wait_q);
}
