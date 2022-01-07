
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct bfa_fcxp_s {int use_irspbuf; int fcxp_tag; struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {int req_pld_sz; int rsp_pld_sz; } ;


 int WARN_ON (int) ;
 void* bfa_mem_get_dmabuf_kva (struct bfa_fcxp_mod_s*,int ,int) ;

void *
bfa_fcxp_get_rspbuf(struct bfa_fcxp_s *fcxp)
{
 struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;
 void *fcxp_buf;

 WARN_ON(fcxp->use_irspbuf != 1);

 fcxp_buf = bfa_mem_get_dmabuf_kva(mod, fcxp->fcxp_tag,
    mod->req_pld_sz + mod->rsp_pld_sz);


 return ((u8 *) fcxp_buf) + mod->req_pld_sz;
}
