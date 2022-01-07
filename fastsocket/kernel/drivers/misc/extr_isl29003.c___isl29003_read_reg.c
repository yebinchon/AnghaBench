
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct isl29003_data {int* reg_cache; } ;
struct i2c_client {int dummy; } ;


 struct isl29003_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int __isl29003_read_reg(struct i2c_client *client,
          u32 reg, u8 mask, u8 shift)
{
 struct isl29003_data *data = i2c_get_clientdata(client);
 return (data->reg_cache[reg] & mask) >> shift;
}
