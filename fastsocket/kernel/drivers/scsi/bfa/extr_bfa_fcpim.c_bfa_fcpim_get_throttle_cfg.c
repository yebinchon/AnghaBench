
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bfa_s {int dummy; } ;
struct bfa_fcp_mod_s {int num_ioim_reqs; int throttle_update_required; } ;


 struct bfa_fcp_mod_s* BFA_FCP_MOD (struct bfa_s*) ;
 scalar_t__ bfa_dconf_read_data_valid (struct bfa_s*) ;
 int bfa_fcpim_read_throttle (struct bfa_s*) ;

u16
bfa_fcpim_get_throttle_cfg(struct bfa_s *bfa, u16 drv_cfg_param)
{
 u16 tmp;
 struct bfa_fcp_mod_s *fcp = BFA_FCP_MOD(bfa);






 if (!fcp->throttle_update_required)
  return (u16)fcp->num_ioim_reqs;

 tmp = bfa_dconf_read_data_valid(bfa) ? bfa_fcpim_read_throttle(bfa) : 0;
 if (!tmp || (tmp > drv_cfg_param))
  tmp = drv_cfg_param;

 return tmp;
}
