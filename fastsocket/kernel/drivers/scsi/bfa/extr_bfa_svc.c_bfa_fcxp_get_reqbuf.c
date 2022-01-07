
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcxp_s {int use_ireqbuf; int fcxp_tag; struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {scalar_t__ rsp_pld_sz; scalar_t__ req_pld_sz; } ;


 int WARN_ON (int) ;
 void* bfa_mem_get_dmabuf_kva (struct bfa_fcxp_mod_s*,int ,scalar_t__) ;

void *
bfa_fcxp_get_reqbuf(struct bfa_fcxp_s *fcxp)
{
 struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;
 void *reqbuf;

 WARN_ON(fcxp->use_ireqbuf != 1);
 reqbuf = bfa_mem_get_dmabuf_kva(mod, fcxp->fcxp_tag,
    mod->req_pld_sz + mod->rsp_pld_sz);
 return reqbuf;
}
