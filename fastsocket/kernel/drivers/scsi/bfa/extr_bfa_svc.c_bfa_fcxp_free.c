
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcxp_s {int fcxp_tag; struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {int bfa; } ;


 int WARN_ON (int ) ;
 int bfa_fcxp_put (struct bfa_fcxp_s*) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcxp_free(struct bfa_fcxp_s *fcxp)
{
 struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;

 WARN_ON(fcxp == ((void*)0));
 bfa_trc(mod->bfa, fcxp->fcxp_tag);
 bfa_fcxp_put(fcxp);
}
