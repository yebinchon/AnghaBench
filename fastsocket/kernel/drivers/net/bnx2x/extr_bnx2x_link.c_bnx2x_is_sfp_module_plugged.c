
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct link_params {int port; int shmem_base; int chip_id; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ bnx2x_get_gpio (struct bnx2x*,int ,int ) ;
 scalar_t__ bnx2x_get_mod_abs_int_cfg (struct bnx2x*,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int bnx2x_is_sfp_module_plugged(struct bnx2x_phy *phy,
           struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u8 gpio_num, gpio_port;
 u32 gpio_val;
 if (bnx2x_get_mod_abs_int_cfg(bp, params->chip_id,
          params->shmem_base, params->port,
          &gpio_num, &gpio_port) != 0)
  return 0;
 gpio_val = bnx2x_get_gpio(bp, gpio_num, gpio_port);


 if (gpio_val == 0)
  return 1;
 else
  return 0;
}
