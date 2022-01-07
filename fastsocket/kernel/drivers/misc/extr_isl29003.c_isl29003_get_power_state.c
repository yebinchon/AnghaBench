
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isl29003_data {int* reg_cache; } ;
struct i2c_client {int dummy; } ;


 int ISL29003_ADC_PD ;
 size_t ISL29003_REG_COMMAND ;
 struct isl29003_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int isl29003_get_power_state(struct i2c_client *client)
{
 struct isl29003_data *data = i2c_get_clientdata(client);
 u8 cmdreg = data->reg_cache[ISL29003_REG_COMMAND];
 return ~cmdreg & ISL29003_ADC_PD;
}
