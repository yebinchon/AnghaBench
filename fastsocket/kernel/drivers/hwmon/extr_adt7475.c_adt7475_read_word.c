
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static u16 adt7475_read_word(struct i2c_client *client, int reg)
{
 u16 val;

 val = i2c_smbus_read_byte_data(client, reg);
 val |= (i2c_smbus_read_byte_data(client, reg + 1) << 8);

 return val;
}
