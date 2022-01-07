
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc4245_data {int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (int ) ;
 int LTC4245_FAULT1 ;
 int LTC4245_FAULT2 ;
 int PTR_ERR (int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ltc4245_data*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kfree (struct ltc4245_data*) ;
 struct ltc4245_data* kzalloc (int,int ) ;
 int ltc4245_group ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ltc4245_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct ltc4245_data *data;
 int ret;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data) {
  ret = -ENOMEM;
  goto out_kzalloc;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 i2c_smbus_write_byte_data(client, LTC4245_FAULT1, 0x00);
 i2c_smbus_write_byte_data(client, LTC4245_FAULT2, 0x00);


 ret = sysfs_create_group(&client->dev.kobj, &ltc4245_group);
 if (ret)
  goto out_sysfs_create_group;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  ret = PTR_ERR(data->hwmon_dev);
  goto out_hwmon_device_register;
 }

 return 0;

out_hwmon_device_register:
 sysfs_remove_group(&client->dev.kobj, &ltc4245_group);
out_sysfs_create_group:
 kfree(data);
out_kzalloc:
 return ret;
}
