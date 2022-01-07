
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adt7475_data {int hwmon_dev; int lock; } ;


 int ADT7475_PWM_COUNT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adt7475_attr_group ;
 int adt7475_read_pwm (struct i2c_client*,int) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adt7475_data*) ;
 int kfree (struct adt7475_data*) ;
 struct adt7475_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adt7475_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adt7475_data *data;
 int i, ret = 0;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 mutex_init(&data->lock);
 i2c_set_clientdata(client, data);



 for (i = 0; i < ADT7475_PWM_COUNT; i++)
  adt7475_read_pwm(client, i);

 ret = sysfs_create_group(&client->dev.kobj, &adt7475_attr_group);
 if (ret)
  goto efree;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  ret = PTR_ERR(data->hwmon_dev);
  goto eremove;
 }

 return 0;

eremove:
 sysfs_remove_group(&client->dev.kobj, &adt7475_attr_group);
efree:
 kfree(data);
 return ret;
}
