
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm75_data {int orig_conf; int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int LM75_REG_CONF ;
 int hwmon_device_unregister (int ) ;
 struct lm75_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (struct lm75_data*) ;
 int lm75_group ;
 int lm75_write_value (struct i2c_client*,int ,int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm75_remove(struct i2c_client *client)
{
 struct lm75_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &lm75_group);
 lm75_write_value(client, LM75_REG_CONF, data->orig_conf);
 i2c_set_clientdata(client, ((void*)0));
 kfree(data);
 return 0;
}
