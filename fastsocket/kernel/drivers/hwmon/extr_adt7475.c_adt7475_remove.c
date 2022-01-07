
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adt7475_data {int hwmon_dev; } ;


 int adt7475_attr_group ;
 int hwmon_device_unregister (int ) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct adt7475_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adt7475_remove(struct i2c_client *client)
{
 struct adt7475_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &adt7475_attr_group);
 kfree(data);

 return 0;
}
