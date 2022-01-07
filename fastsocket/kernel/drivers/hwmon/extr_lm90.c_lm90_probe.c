
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lm90_data {scalar_t__ kind; int hwmon_dev; int update_lock; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_6__ {int kobj; int parent; } ;
struct i2c_client {int flags; TYPE_2__ dev; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int dev_attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLIENT_PEC ;
 int I2C_FUNC_SMBUS_BYTE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ adm1032 ;
 int dev_attr_pec ;
 int device_create_file (TYPE_2__*,int *) ;
 int device_remove_file (TYPE_2__*,int *) ;
 int hwmon_device_register (TYPE_2__*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm90_data*) ;
 int kfree (struct lm90_data*) ;
 struct lm90_data* kzalloc (int,int ) ;
 int lm90_group ;
 int lm90_init_client (struct i2c_client*) ;
 scalar_t__ max6646 ;
 scalar_t__ max6657 ;
 int mutex_init (int *) ;
 TYPE_1__ sensor_dev_attr_temp2_offset ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 struct i2c_adapter* to_i2c_adapter (int ) ;

__attribute__((used)) static int lm90_probe(struct i2c_client *new_client,
        const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = to_i2c_adapter(new_client->dev.parent);
 struct lm90_data *data;
 int err;

 data = kzalloc(sizeof(struct lm90_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }
 i2c_set_clientdata(new_client, data);
 mutex_init(&data->update_lock);


 data->kind = id->driver_data;
 if (data->kind == adm1032) {
  if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE))
   new_client->flags &= ~I2C_CLIENT_PEC;
 }


 lm90_init_client(new_client);


 if ((err = sysfs_create_group(&new_client->dev.kobj, &lm90_group)))
  goto exit_free;
 if (new_client->flags & I2C_CLIENT_PEC) {
  if ((err = device_create_file(&new_client->dev,
           &dev_attr_pec)))
   goto exit_remove_files;
 }
 if (data->kind != max6657 && data->kind != max6646) {
  if ((err = device_create_file(&new_client->dev,
    &sensor_dev_attr_temp2_offset.dev_attr)))
   goto exit_remove_files;
 }

 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&new_client->dev.kobj, &lm90_group);
 device_remove_file(&new_client->dev, &dev_attr_pec);
exit_free:
 kfree(data);
exit:
 return err;
}
