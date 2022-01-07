
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct isl29003_data {int* reg_cache; int lock; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 size_t ISL29003_NUM_CACHABLE_REGS ;
 struct isl29003_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __isl29003_write_reg(struct i2c_client *client,
    u32 reg, u8 mask, u8 shift, u8 val)
{
 struct isl29003_data *data = i2c_get_clientdata(client);
 int ret = 0;
 u8 tmp;

 if (reg >= ISL29003_NUM_CACHABLE_REGS)
  return -EINVAL;

 mutex_lock(&data->lock);

 tmp = data->reg_cache[reg];
 tmp &= ~mask;
 tmp |= val << shift;

 ret = i2c_smbus_write_byte_data(client, reg, tmp);
 if (!ret)
  data->reg_cache[reg] = tmp;

 mutex_unlock(&data->lock);
 return ret;
}
