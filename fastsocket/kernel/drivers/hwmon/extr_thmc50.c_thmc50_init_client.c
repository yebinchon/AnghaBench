
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thmc50_data {int analog_out; scalar_t__ type; int has_temp3; } ;
struct i2c_client {int dummy; } ;


 int THMC50_REG_ANALOG_OUT ;
 int THMC50_REG_CONF ;
 scalar_t__ adm1022 ;
 struct thmc50_data* i2c_get_clientdata (struct i2c_client*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void thmc50_init_client(struct i2c_client *client)
{
 struct thmc50_data *data = i2c_get_clientdata(client);
 int config;

 data->analog_out = i2c_smbus_read_byte_data(client,
          THMC50_REG_ANALOG_OUT);

 if (data->analog_out == 0) {
  data->analog_out = 1;
  i2c_smbus_write_byte_data(client, THMC50_REG_ANALOG_OUT,
       data->analog_out);
 }
 config = i2c_smbus_read_byte_data(client, THMC50_REG_CONF);
 config |= 0x1;
 if (data->type == adm1022 && (config & (1 << 7)))
  data->has_temp3 = 1;
 i2c_smbus_write_byte_data(client, THMC50_REG_CONF, config);
}
