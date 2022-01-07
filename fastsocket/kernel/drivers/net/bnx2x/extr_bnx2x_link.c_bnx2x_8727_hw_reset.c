
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 scalar_t__ REG_RD (struct bnx2x*,int ) ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8727_hw_reset(struct bnx2x_phy *phy,
    struct link_params *params) {
 u32 swap_val, swap_override;
 u8 port;



 struct bnx2x *bp = params->bp;
 swap_val = REG_RD(bp, NIG_REG_PORT_SWAP);
 swap_override = REG_RD(bp, NIG_REG_STRAP_OVERRIDE);
 port = (swap_val && swap_override) ^ 1;
 bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
}
