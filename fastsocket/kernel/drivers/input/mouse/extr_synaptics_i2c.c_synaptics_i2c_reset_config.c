
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int DEV_COMMAND_REG ;
 int RESET_COMMAND ;
 int SOFT_RESET_DELAY_MS ;
 int dev_err (int *,char*) ;
 int msleep (int ) ;
 int synaptics_i2c_config (struct i2c_client*) ;
 int synaptics_i2c_reg_set (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int synaptics_i2c_reset_config(struct i2c_client *client)
{
 int ret;


 ret = synaptics_i2c_reg_set(client, DEV_COMMAND_REG, RESET_COMMAND);
 if (ret) {
  dev_err(&client->dev, "Unable to reset device\n");
 } else {
  msleep(SOFT_RESET_DELAY_MS);
  ret = synaptics_i2c_config(client);
  if (ret)
   dev_err(&client->dev, "Unable to config device\n");
 }

 return ret;
}
