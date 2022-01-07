
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BP_PATH (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 scalar_t__ REG_RD (struct bnx2x*,int ) ;

__attribute__((used)) static u8 bnx2x_get_gpio_port(struct link_params *params)
{
 u8 gpio_port;
 u32 swap_val, swap_override;
 struct bnx2x *bp = params->bp;
 if (CHIP_IS_E2(bp))
  gpio_port = BP_PATH(bp);
 else
  gpio_port = params->port;
 swap_val = REG_RD(bp, NIG_REG_PORT_SWAP);
 swap_override = REG_RD(bp, NIG_REG_STRAP_OVERRIDE);
 return gpio_port ^ (swap_val && swap_override);
}
