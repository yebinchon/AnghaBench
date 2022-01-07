
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1025_data {int hwmon_dev; } ;


 int adm1025_group ;
 int adm1025_group_in4 ;
 int hwmon_device_unregister (int ) ;
 struct adm1025_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct adm1025_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adm1025_remove(struct i2c_client *client)
{
 struct adm1025_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &adm1025_group);
 sysfs_remove_group(&client->dev.kobj, &adm1025_group_in4);

 kfree(data);
 return 0;
}
