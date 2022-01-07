
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm90_data {scalar_t__ kind; int flags; } ;
struct i2c_client {int dev; } ;


 int LM90_FLAG_ADT7461_EXT ;
 int LM90_REG_R_CONFIG1 ;
 int LM90_REG_W_CONFIG1 ;
 int LM90_REG_W_CONVRATE ;
 scalar_t__ adt7461 ;
 int dev_warn (int *,char*) ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ lm90_read_reg (struct i2c_client*,int ,int*) ;
 scalar_t__ max6680 ;

__attribute__((used)) static void lm90_init_client(struct i2c_client *client)
{
 u8 config, config_orig;
 struct lm90_data *data = i2c_get_clientdata(client);




 i2c_smbus_write_byte_data(client, LM90_REG_W_CONVRATE,
      5);
 if (lm90_read_reg(client, LM90_REG_R_CONFIG1, &config) < 0) {
  dev_warn(&client->dev, "Initialization failed!\n");
  return;
 }
 config_orig = config;


 if (data->kind == adt7461) {
  if (config & 0x04)
   data->flags |= LM90_FLAG_ADT7461_EXT;
 }






 if (data->kind == max6680) {
  config |= 0x18;
 }

 config &= 0xBF;
 if (config != config_orig)
  i2c_smbus_write_byte_data(client, LM90_REG_W_CONFIG1, config);
}
