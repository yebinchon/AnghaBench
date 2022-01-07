
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm63_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct lm63_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct lm63_data*) ;
 int lm63_group ;
 int lm63_group_fan1 ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lm63_remove(struct i2c_client *client)
{
 struct lm63_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &lm63_group);
 sysfs_remove_group(&client->dev.kobj, &lm63_group_fan1);

 kfree(data);
 return 0;
}
