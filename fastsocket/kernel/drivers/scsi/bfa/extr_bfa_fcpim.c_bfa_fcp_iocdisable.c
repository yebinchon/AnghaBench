
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcp_mod_s {int dummy; } ;


 struct bfa_fcp_mod_s* BFA_FCP_MOD (struct bfa_s*) ;
 int bfa_fcpim_iocdisable (struct bfa_fcp_mod_s*) ;

__attribute__((used)) static void
bfa_fcp_iocdisable(struct bfa_s *bfa)
{
 struct bfa_fcp_mod_s *fcp = BFA_FCP_MOD(bfa);

 bfa_fcpim_iocdisable(fcp);
}
