
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static void adt7475_write_word(struct i2c_client *client, int reg, u16 val)
{
 i2c_smbus_write_byte_data(client, reg + 1, val >> 8);
 i2c_smbus_write_byte_data(client, reg, val & 0xFF);
}
