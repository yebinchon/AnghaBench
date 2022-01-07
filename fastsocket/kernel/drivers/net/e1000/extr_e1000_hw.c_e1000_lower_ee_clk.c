
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int delay_usec; } ;
struct e1000_hw {TYPE_1__ eeprom; } ;


 int E1000_EECD_SK ;
 int E1000_WRITE_FLUSH () ;
 int EECD ;
 int ew32 (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void e1000_lower_ee_clk(struct e1000_hw *hw, u32 *eecd)
{



 *eecd = *eecd & ~E1000_EECD_SK;
 ew32(EECD, *eecd);
 E1000_WRITE_FLUSH();
 udelay(hw->eeprom.delay_usec);
}
