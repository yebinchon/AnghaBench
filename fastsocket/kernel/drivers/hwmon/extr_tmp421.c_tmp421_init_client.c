
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ENODEV ;
 int TMP421_CONFIG_REG_1 ;
 int TMP421_CONFIG_SHUTDOWN ;
 int TMP421_CONVERSION_RATE_REG ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int tmp421_init_client(struct i2c_client *client)
{
 int config, config_orig;


 i2c_smbus_write_byte_data(client, TMP421_CONVERSION_RATE_REG, 0x05);


 config = i2c_smbus_read_byte_data(client, TMP421_CONFIG_REG_1);
 if (config < 0) {
  dev_err(&client->dev, "Could not read configuration"
    " register (%d)\n", config);
  return -ENODEV;
 }

 config_orig = config;
 config &= ~TMP421_CONFIG_SHUTDOWN;

 if (config != config_orig) {
  dev_info(&client->dev, "Enable monitoring chip\n");
  i2c_smbus_write_byte_data(client, TMP421_CONFIG_REG_1, config);
 }

 return 0;
}
