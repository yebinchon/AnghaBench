
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int LM85_REG_CONFIG ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int lm85_read_value (struct i2c_client*,int ) ;
 int lm85_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm85_init_client(struct i2c_client *client)
{
 int value;


 value = lm85_read_value(client, LM85_REG_CONFIG);
 if (!(value & 0x01)) {
  dev_info(&client->dev, "Starting monitoring\n");
  lm85_write_value(client, LM85_REG_CONFIG, value | 0x01);
 }


 if (value & 0x02)
  dev_warn(&client->dev, "Device configuration is locked\n");
 if (!(value & 0x04))
  dev_warn(&client->dev, "Device is not ready\n");
}
