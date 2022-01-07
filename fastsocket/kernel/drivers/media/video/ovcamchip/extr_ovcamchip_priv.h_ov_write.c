
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,unsigned char) ;

__attribute__((used)) static inline int ov_write(struct i2c_client *c, unsigned char reg,
      unsigned char value )
{
 return i2c_smbus_write_byte_data(c, reg, value);
}
