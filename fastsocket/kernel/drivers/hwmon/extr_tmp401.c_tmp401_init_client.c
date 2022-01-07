
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int TMP401_CONFIG_READ ;
 int TMP401_CONFIG_SHUTDOWN ;
 int TMP401_CONFIG_WRITE ;
 int TMP401_CONVERSION_RATE_WRITE ;
 int dev_warn (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void tmp401_init_client(struct i2c_client *client)
{
 int config, config_orig;


 i2c_smbus_write_byte_data(client, TMP401_CONVERSION_RATE_WRITE, 5);


 config = i2c_smbus_read_byte_data(client, TMP401_CONFIG_READ);
 if (config < 0) {
  dev_warn(&client->dev, "Initialization failed!\n");
  return;
 }

 config_orig = config;
 config &= ~TMP401_CONFIG_SHUTDOWN;

 if (config != config_orig)
  i2c_smbus_write_byte_data(client, TMP401_CONFIG_WRITE, config);
}
