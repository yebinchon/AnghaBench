
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm87_data {int config; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int LM87_REG_CONFIG ;
 int hwmon_device_unregister (int ) ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct lm87_data*) ;
 int lm87_group ;
 int lm87_group_opt ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm87_remove(struct i2c_client *client)
{
 struct lm87_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &lm87_group);
 sysfs_remove_group(&client->dev.kobj, &lm87_group_opt);

 lm87_write_value(client, LM87_REG_CONFIG, data->config);
 kfree(data);
 return 0;
}
