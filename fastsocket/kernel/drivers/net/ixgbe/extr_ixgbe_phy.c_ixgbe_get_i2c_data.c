
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IXGBE_I2C_DATA_IN ;

__attribute__((used)) static bool ixgbe_get_i2c_data(u32 *i2cctl)
{
 bool data;

 if (*i2cctl & IXGBE_I2C_DATA_IN)
  data = 1;
 else
  data = 0;

 return data;
}
