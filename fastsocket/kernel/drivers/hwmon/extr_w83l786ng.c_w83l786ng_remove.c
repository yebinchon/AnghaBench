
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83l786ng_data {int hwmon_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int hwmon_device_unregister (int ) ;
 struct w83l786ng_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct w83l786ng_data*) ;
 int sysfs_remove_group (int *,int *) ;
 int w83l786ng_group ;

__attribute__((used)) static int
w83l786ng_remove(struct i2c_client *client)
{
 struct w83l786ng_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &w83l786ng_group);

 kfree(data);

 return 0;
}
