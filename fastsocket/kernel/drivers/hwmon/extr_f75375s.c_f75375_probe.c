
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_10__ {int kobj; struct f75375s_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; int adapter; } ;
struct f75375s_platform_data {int dummy; } ;
struct f75375_data {scalar_t__ kind; int hwmon_dev; int update_lock; } ;
struct TYPE_6__ {int attr; } ;
struct TYPE_9__ {TYPE_1__ dev_attr; } ;
struct TYPE_7__ {int attr; } ;
struct TYPE_8__ {TYPE_2__ dev_attr; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int S_IRUGO ;
 int S_IWUSR ;
 scalar_t__ f75375 ;
 int f75375_group ;
 int f75375_init (struct i2c_client*,struct f75375_data*,struct f75375s_platform_data*) ;
 int hwmon_device_register (TYPE_5__*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct f75375_data*) ;
 int kfree (struct f75375_data*) ;
 struct f75375_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_4__ sensor_dev_attr_pwm1_mode ;
 TYPE_3__ sensor_dev_attr_pwm2_mode ;
 int sysfs_chmod_file (int *,int *,int) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int f75375_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct f75375_data *data;
 struct f75375s_platform_data *f75375s_pdata = client->dev.platform_data;
 int err;

 if (!i2c_check_functionality(client->adapter,
    I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;
 if (!(data = kzalloc(sizeof(struct f75375_data), GFP_KERNEL)))
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);
 data->kind = id->driver_data;

 if ((err = sysfs_create_group(&client->dev.kobj, &f75375_group)))
  goto exit_free;

 if (data->kind == f75375) {
  err = sysfs_chmod_file(&client->dev.kobj,
   &sensor_dev_attr_pwm1_mode.dev_attr.attr,
   S_IRUGO | S_IWUSR);
  if (err)
   goto exit_remove;
  err = sysfs_chmod_file(&client->dev.kobj,
   &sensor_dev_attr_pwm2_mode.dev_attr.attr,
   S_IRUGO | S_IWUSR);
  if (err)
   goto exit_remove;
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 if (f75375s_pdata != ((void*)0))
  f75375_init(client, data, f75375s_pdata);

 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &f75375_group);
exit_free:
 kfree(data);
 i2c_set_clientdata(client, ((void*)0));
 return err;
}
