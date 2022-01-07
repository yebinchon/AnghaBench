
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_I2C ;
 int IXGBE_I2CCTL ;
 int IXGBE_I2C_DATA_OUT ;
 scalar_t__ IXGBE_I2C_T_FALL ;
 scalar_t__ IXGBE_I2C_T_RISE ;
 scalar_t__ IXGBE_I2C_T_SU_DATA ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*,int) ;
 int ixgbe_get_i2c_data (int *) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static s32 ixgbe_set_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl, bool data)
{
 s32 status = 0;

 if (data)
  *i2cctl |= IXGBE_I2C_DATA_OUT;
 else
  *i2cctl &= ~IXGBE_I2C_DATA_OUT;

 IXGBE_WRITE_REG(hw, IXGBE_I2CCTL, *i2cctl);
 IXGBE_WRITE_FLUSH(hw);


 udelay(IXGBE_I2C_T_RISE + IXGBE_I2C_T_FALL + IXGBE_I2C_T_SU_DATA);


 *i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL);
 if (data != ixgbe_get_i2c_data(i2cctl)) {
  status = IXGBE_ERR_I2C;
  hw_dbg(hw, "Error - I2C data was not set to %X.\n", data);
 }

 return status;
}
