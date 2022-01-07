
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfa_s {int dummy; } ;
struct bfa_lps_mod_s {int dummy; } ;
struct TYPE_2__ {int lp_pid; } ;


 TYPE_1__* BFA_LPS_FROM_TAG (struct bfa_lps_mod_s*,int ) ;
 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;

u32
bfa_lps_get_base_pid(struct bfa_s *bfa)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(bfa);

 return BFA_LPS_FROM_TAG(mod, 0)->lp_pid;
}
