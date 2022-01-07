
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_I2CCTL ;
 int IXGBE_I2C_T_HIGH ;
 int IXGBE_I2C_T_LOW ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_get_i2c_data (int *) ;
 int ixgbe_lower_i2c_clk (struct ixgbe_hw*,int *) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int *) ;
 int udelay (int ) ;

__attribute__((used)) static s32 ixgbe_clock_in_i2c_bit(struct ixgbe_hw *hw, bool *data)
{
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL);

 ixgbe_raise_i2c_clk(hw, &i2cctl);


 udelay(IXGBE_I2C_T_HIGH);

 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL);
 *data = ixgbe_get_i2c_data(&i2cctl);

 ixgbe_lower_i2c_clk(hw, &i2cctl);


 udelay(IXGBE_I2C_T_LOW);

 return 0;
}
