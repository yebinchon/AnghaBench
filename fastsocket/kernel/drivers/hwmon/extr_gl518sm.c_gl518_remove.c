
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct gl518_data {scalar_t__ type; int hwmon_dev; } ;


 int gl518_group ;
 int gl518_group_r80 ;
 scalar_t__ gl518sm_r80 ;
 int hwmon_device_unregister (int ) ;
 struct gl518_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct gl518_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int gl518_remove(struct i2c_client *client)
{
 struct gl518_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &gl518_group);
 if (data->type == gl518sm_r80)
  sysfs_remove_group(&client->dev.kobj, &gl518_group_r80);

 kfree(data);
 return 0;
}
