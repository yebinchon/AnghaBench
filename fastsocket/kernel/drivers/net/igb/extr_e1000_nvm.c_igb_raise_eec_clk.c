
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int delay_usec; } ;
struct e1000_hw {TYPE_1__ nvm; } ;


 int E1000_EECD ;
 int E1000_EECD_SK ;
 int udelay (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igb_raise_eec_clk(struct e1000_hw *hw, u32 *eecd)
{
 *eecd = *eecd | E1000_EECD_SK;
 wr32(E1000_EECD, *eecd);
 wrfl();
 udelay(hw->nvm.delay_usec);
}
