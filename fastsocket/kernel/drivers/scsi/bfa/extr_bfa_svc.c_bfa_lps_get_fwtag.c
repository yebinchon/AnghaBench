
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfa_s {int dummy; } ;
struct bfa_lps_mod_s {int dummy; } ;
struct TYPE_2__ {int fw_tag; } ;


 TYPE_1__* BFA_LPS_FROM_TAG (struct bfa_lps_mod_s*,int ) ;
 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;

u8
bfa_lps_get_fwtag(struct bfa_s *bfa, u8 lp_tag)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(bfa);

 return BFA_LPS_FROM_TAG(mod, lp_tag)->fw_tag;
}
