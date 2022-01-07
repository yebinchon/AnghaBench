
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int config; void* count; } ;
struct i2c_client {int dev; } ;


 int EIO ;
 int MAX6650_CFG_MODE_MASK ;
 int MAX6650_CFG_MODE_OFF ;
 int MAX6650_CFG_MODE_OPEN_LOOP ;
 int MAX6650_CFG_PRESCALER_16 ;
 int MAX6650_CFG_PRESCALER_2 ;
 int MAX6650_CFG_PRESCALER_4 ;
 int MAX6650_CFG_PRESCALER_8 ;
 int MAX6650_CFG_PRESCALER_MASK ;
 int MAX6650_CFG_V12 ;
 int MAX6650_REG_CONFIG ;
 int MAX6650_REG_COUNT ;
 int MAX6650_REG_DAC ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int fan_voltage ;
 struct max6650_data* i2c_get_clientdata (struct i2c_client*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int prescaler ;

__attribute__((used)) static int max6650_init_client(struct i2c_client *client)
{
 struct max6650_data *data = i2c_get_clientdata(client);
 int config;
 int err = -EIO;

 config = i2c_smbus_read_byte_data(client, MAX6650_REG_CONFIG);

 if (config < 0) {
  dev_err(&client->dev, "Error reading config, aborting.\n");
  return err;
 }

 switch (fan_voltage) {
  case 0:
   break;
  case 5:
   config &= ~MAX6650_CFG_V12;
   break;
  case 12:
   config |= MAX6650_CFG_V12;
   break;
  default:
   dev_err(&client->dev,
    "illegal value for fan_voltage (%d)\n",
    fan_voltage);
 }

 dev_info(&client->dev, "Fan voltage is set to %dV.\n",
   (config & MAX6650_CFG_V12) ? 12 : 5);

 switch (prescaler) {
  case 0:
   break;
  case 1:
   config &= ~MAX6650_CFG_PRESCALER_MASK;
   break;
  case 2:
   config = (config & ~MAX6650_CFG_PRESCALER_MASK)
     | MAX6650_CFG_PRESCALER_2;
   break;
  case 4:
   config = (config & ~MAX6650_CFG_PRESCALER_MASK)
     | MAX6650_CFG_PRESCALER_4;
   break;
  case 8:
   config = (config & ~MAX6650_CFG_PRESCALER_MASK)
     | MAX6650_CFG_PRESCALER_8;
   break;
  case 16:
   config = (config & ~MAX6650_CFG_PRESCALER_MASK)
     | MAX6650_CFG_PRESCALER_16;
   break;
  default:
   dev_err(&client->dev,
    "illegal value for prescaler (%d)\n",
    prescaler);
 }

 dev_info(&client->dev, "Prescaler is set to %d.\n",
   1 << (config & MAX6650_CFG_PRESCALER_MASK));






 if ((config & MAX6650_CFG_MODE_MASK) == MAX6650_CFG_MODE_OFF) {
  dev_dbg(&client->dev, "Change mode to open loop, full off.\n");
  config = (config & ~MAX6650_CFG_MODE_MASK)
    | MAX6650_CFG_MODE_OPEN_LOOP;
  if (i2c_smbus_write_byte_data(client, MAX6650_REG_DAC, 255)) {
   dev_err(&client->dev, "DAC write error, aborting.\n");
   return err;
  }
 }

 if (i2c_smbus_write_byte_data(client, MAX6650_REG_CONFIG, config)) {
  dev_err(&client->dev, "Config write error, aborting.\n");
  return err;
 }

 data->config = config;
 data->count = i2c_smbus_read_byte_data(client, MAX6650_REG_COUNT);

 return 0;
}
