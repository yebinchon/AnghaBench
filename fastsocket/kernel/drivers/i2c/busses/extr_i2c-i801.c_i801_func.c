
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i801_priv {int features; } ;
struct i2c_adapter {int dummy; } ;


 int FEATURE_I2C_BLOCK_READ ;
 int FEATURE_SMBUS_PEC ;
 int I2C_FUNC_SMBUS_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_PEC ;
 int I2C_FUNC_SMBUS_QUICK ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_I2C_BLOCK ;
 struct i801_priv* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static u32 i801_func(struct i2c_adapter *adapter)
{
 struct i801_priv *priv = i2c_get_adapdata(adapter);

 return I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
        I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
        I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_WRITE_I2C_BLOCK |
        ((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) |
        ((priv->features & FEATURE_I2C_BLOCK_READ) ?
  I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0);
}
