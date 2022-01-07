
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgb_hw {int dummy; } ;


 int EECD ;
 int IXGB_EECD_DI ;
 int IXGB_EECD_DO ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int ixgb_lower_clock (struct ixgb_hw*,int*) ;
 int ixgb_raise_clock (struct ixgb_hw*,int*) ;

__attribute__((used)) static u16
ixgb_shift_in_bits(struct ixgb_hw *hw)
{
 u32 eecd_reg;
 u32 i;
 u16 data;
 eecd_reg = IXGB_READ_REG(hw, EECD);

 eecd_reg &= ~(IXGB_EECD_DO | IXGB_EECD_DI);
 data = 0;

 for (i = 0; i < 16; i++) {
  data = data << 1;
  ixgb_raise_clock(hw, &eecd_reg);

  eecd_reg = IXGB_READ_REG(hw, EECD);

  eecd_reg &= ~(IXGB_EECD_DI);
  if (eecd_reg & IXGB_EECD_DO)
   data |= 1;

  ixgb_lower_clock(hw, &eecd_reg);
 }

 return data;
}
