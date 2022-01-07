
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct g760a_data {int hwmon_dev; } ;


 int g760a_group ;
 int hwmon_device_unregister (int ) ;
 struct g760a_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int kfree (struct g760a_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int g760a_remove(struct i2c_client *client)
{
 struct g760a_data *data = i2c_get_clientdata(client);
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &g760a_group);
 kfree(data);
 i2c_set_clientdata(client, ((void*)0));

 return 0;
}
