
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_I2CCTL ;
 scalar_t__ IXGBE_I2C_CLK_IN ;
 scalar_t__ IXGBE_I2C_CLK_OUT ;
 scalar_t__ IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT ;
 int IXGBE_I2C_T_RISE ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static void ixgbe_raise_i2c_clk(struct ixgbe_hw *hw, u32 *i2cctl)
{
 u32 i = 0;
 u32 timeout = IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT;
 u32 i2cctl_r = 0;

 for (i = 0; i < timeout; i++) {
  *i2cctl |= IXGBE_I2C_CLK_OUT;
  IXGBE_WRITE_REG(hw, IXGBE_I2CCTL, *i2cctl);
  IXGBE_WRITE_FLUSH(hw);

  udelay(IXGBE_I2C_T_RISE);

  i2cctl_r = IXGBE_READ_REG(hw, IXGBE_I2CCTL);
  if (i2cctl_r & IXGBE_I2C_CLK_IN)
   break;
 }
}
