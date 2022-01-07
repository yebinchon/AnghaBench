
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BP_PATH (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 int DP (int ,char*,int ) ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int NETIF_MSG_LINK ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_8073_link_reset(struct bnx2x_phy *phy,
      struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u8 gpio_port;
 if (CHIP_IS_E2(bp))
  gpio_port = BP_PATH(bp);
 else
  gpio_port = params->port;
 DP(NETIF_MSG_LINK, "Setting 8073 port %d into low power mode\n",
    gpio_port);
 bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_LOW,
         gpio_port);
}
