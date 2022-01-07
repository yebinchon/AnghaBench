
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_I2CCTL ;
 int IXGBE_I2C_T_BUF ;
 int IXGBE_I2C_T_SU_STO ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int *) ;
 int ixgbe_set_i2c_data (struct ixgbe_hw*,int *,int) ;
 int udelay (int ) ;

__attribute__((used)) static void ixgbe_i2c_stop(struct ixgbe_hw *hw)
{
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL);


 ixgbe_set_i2c_data(hw, &i2cctl, 0);
 ixgbe_raise_i2c_clk(hw, &i2cctl);


 udelay(IXGBE_I2C_T_SU_STO);

 ixgbe_set_i2c_data(hw, &i2cctl, 1);


 udelay(IXGBE_I2C_T_BUF);
}
