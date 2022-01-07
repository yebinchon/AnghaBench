
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int dummy; } ;


 int ASSERT (int ) ;
 int EECD ;
 int IXGB_EECD_DO ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int ixgb_standby_eeprom (struct ixgb_hw*) ;
 int udelay (int) ;

__attribute__((used)) static bool
ixgb_wait_eeprom_command(struct ixgb_hw *hw)
{
 u32 eecd_reg;
 u32 i;




 ixgb_standby_eeprom(hw);





 for (i = 0; i < 200; i++) {
  eecd_reg = IXGB_READ_REG(hw, EECD);

  if (eecd_reg & IXGB_EECD_DO)
   return (1);

  udelay(50);
 }
 ASSERT(0);
 return (0);
}
