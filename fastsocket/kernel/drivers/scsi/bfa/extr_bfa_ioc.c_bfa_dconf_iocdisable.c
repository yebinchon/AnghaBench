
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_dconf_mod_s {int dummy; } ;


 struct bfa_dconf_mod_s* BFA_DCONF_MOD (struct bfa_s*) ;
 int BFA_DCONF_SM_IOCDISABLE ;
 int bfa_sm_send_event (struct bfa_dconf_mod_s*,int ) ;

__attribute__((used)) static void
bfa_dconf_iocdisable(struct bfa_s *bfa)
{
 struct bfa_dconf_mod_s *dconf = BFA_DCONF_MOD(bfa);
 bfa_sm_send_event(dconf, BFA_DCONF_SM_IOCDISABLE);
}
