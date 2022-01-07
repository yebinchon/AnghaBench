
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_I2C ;
 int IXGBE_I2CCTL ;
 int IXGBE_I2C_T_HIGH ;
 int IXGBE_I2C_T_LOW ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*,int) ;
 int ixgbe_lower_i2c_clk (struct ixgbe_hw*,int *) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int *) ;
 scalar_t__ ixgbe_set_i2c_data (struct ixgbe_hw*,int *,int) ;
 int udelay (int ) ;

__attribute__((used)) static s32 ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data)
{
 s32 status;
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL);

 status = ixgbe_set_i2c_data(hw, &i2cctl, data);
 if (status == 0) {
  ixgbe_raise_i2c_clk(hw, &i2cctl);


  udelay(IXGBE_I2C_T_HIGH);

  ixgbe_lower_i2c_clk(hw, &i2cctl);




  udelay(IXGBE_I2C_T_LOW);
 } else {
  status = IXGBE_ERR_I2C;
  hw_dbg(hw, "I2C data was not set to %X\n", data);
 }

 return status;
}
