
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max6875_data {int fake_client; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {int addr; TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_new_dummy (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct max6875_data*) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct max6875_data*) ;
 struct max6875_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_bin_file (int *,int *) ;
 int user_eeprom_attr ;

__attribute__((used)) static int max6875_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct max6875_data *data;
 int err;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WRITE_BYTE_DATA
         | I2C_FUNC_SMBUS_READ_BYTE))
  return -ENODEV;


 if (client->addr & 1)
  return -ENODEV;

 if (!(data = kzalloc(sizeof(struct max6875_data), GFP_KERNEL)))
  return -ENOMEM;


 data->fake_client = i2c_new_dummy(client->adapter, client->addr + 1);
 if (!data->fake_client) {
  err = -ENOMEM;
  goto exit_kfree;
 }


 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);

 err = sysfs_create_bin_file(&client->dev.kobj, &user_eeprom_attr);
 if (err)
  goto exit_remove_fake;

 return 0;

exit_remove_fake:
 i2c_unregister_device(data->fake_client);
exit_kfree:
 kfree(data);
 return err;
}
