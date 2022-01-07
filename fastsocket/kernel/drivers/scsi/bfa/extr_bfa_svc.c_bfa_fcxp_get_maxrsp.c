
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_s {int dummy; } ;
struct bfa_fcxp_mod_s {int rsp_pld_sz; } ;


 struct bfa_fcxp_mod_s* BFA_FCXP_MOD (struct bfa_s*) ;

u32
bfa_fcxp_get_maxrsp(struct bfa_s *bfa)
{
 struct bfa_fcxp_mod_s *mod = BFA_FCXP_MOD(bfa);

 return mod->rsp_pld_sz;
}
