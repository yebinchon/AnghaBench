
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_I2CCTL ;
 int IXGBE_I2C_T_HIGH ;
 int IXGBE_I2C_T_LOW ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_i2c_start (struct ixgbe_hw*) ;
 int ixgbe_i2c_stop (struct ixgbe_hw*) ;
 int ixgbe_lower_i2c_clk (struct ixgbe_hw*,int*) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int*) ;
 int ixgbe_set_i2c_data (struct ixgbe_hw*,int*,int) ;
 int udelay (int ) ;

__attribute__((used)) static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw)
{
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL);
 u32 i;

 ixgbe_i2c_start(hw);

 ixgbe_set_i2c_data(hw, &i2cctl, 1);

 for (i = 0; i < 9; i++) {
  ixgbe_raise_i2c_clk(hw, &i2cctl);


  udelay(IXGBE_I2C_T_HIGH);

  ixgbe_lower_i2c_clk(hw, &i2cctl);


  udelay(IXGBE_I2C_T_LOW);
 }

 ixgbe_i2c_start(hw);


 ixgbe_i2c_stop(hw);
}
