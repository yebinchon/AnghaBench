
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_I2CCTL ;
 int IXGBE_I2C_CLK_OUT ;
 int IXGBE_I2C_T_FALL ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void ixgbe_lower_i2c_clk(struct ixgbe_hw *hw, u32 *i2cctl)
{

 *i2cctl &= ~IXGBE_I2C_CLK_OUT;

 IXGBE_WRITE_REG(hw, IXGBE_I2CCTL, *i2cctl);
 IXGBE_WRITE_FLUSH(hw);


 udelay(IXGBE_I2C_T_FALL);
}
