
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; int adapter; } ;
struct g760a_data {int hwmon_dev; int clk; int fan_div; int update_lock; struct i2c_client* client; } ;


 int EIO ;
 int ENOMEM ;
 int G760A_DEFAULT_CLK ;
 int G760A_DEFAULT_FAN_DIV ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int g760a_group ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct g760a_data*) ;
 int kfree (struct g760a_data*) ;
 struct g760a_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int g760a_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct g760a_data *data;
 int err;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 data = kzalloc(sizeof(struct g760a_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);

 data->client = client;
 mutex_init(&data->update_lock);


 data->fan_div = G760A_DEFAULT_FAN_DIV;
 data->clk = G760A_DEFAULT_CLK;


 err = sysfs_create_group(&client->dev.kobj, &g760a_group);
 if (err)
  goto error_sysfs_create_group;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto error_hwmon_device_register;
 }

 return 0;

error_hwmon_device_register:
 sysfs_remove_group(&client->dev.kobj, &g760a_group);
error_sysfs_create_group:
 kfree(data);
 i2c_set_clientdata(client, ((void*)0));

 return err;
}
