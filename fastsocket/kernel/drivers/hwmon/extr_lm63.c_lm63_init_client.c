
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int config; int config_fan; int pwm1_freq; } ;
struct i2c_client {int dev; } ;


 int LM63_REG_CONFIG1 ;
 int LM63_REG_CONFIG_FAN ;
 int LM63_REG_PWM_FREQ ;
 int dev_dbg (int *,char*,...) ;
 struct lm63_data* i2c_get_clientdata (struct i2c_client*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm63_init_client(struct i2c_client *client)
{
 struct lm63_data *data = i2c_get_clientdata(client);

 data->config = i2c_smbus_read_byte_data(client, LM63_REG_CONFIG1);
 data->config_fan = i2c_smbus_read_byte_data(client,
          LM63_REG_CONFIG_FAN);


 if (data->config & 0x40) {
  dev_dbg(&client->dev, "Switching to operational mode\n");
  data->config &= 0xA7;
  i2c_smbus_write_byte_data(client, LM63_REG_CONFIG1,
       data->config);
 }


 data->pwm1_freq = i2c_smbus_read_byte_data(client, LM63_REG_PWM_FREQ);
 if (data->pwm1_freq == 0)
  data->pwm1_freq = 1;


 dev_dbg(&client->dev, "Alert/tach pin configured for %s\n",
  (data->config & 0x04) ? "tachometer input" :
  "alert output");
 dev_dbg(&client->dev, "PWM clock %s kHz, output frequency %u Hz\n",
  (data->config_fan & 0x08) ? "1.4" : "360",
  ((data->config_fan & 0x08) ? 700 : 180000) / data->pwm1_freq);
 dev_dbg(&client->dev, "PWM output active %s, %s mode\n",
  (data->config_fan & 0x10) ? "low" : "high",
  (data->config_fan & 0x20) ? "manual" : "auto");
}
