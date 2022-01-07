
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1025_data {int hwmon_dev; int update_lock; } ;


 int ADM1025_REG_CONFIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adm1025_group ;
 int adm1025_group_in4 ;
 int adm1025_init_client (struct i2c_client*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1025_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int kfree (struct adm1025_data*) ;
 struct adm1025_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adm1025_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adm1025_data *data;
 int err;
 u8 config;

 data = kzalloc(sizeof(struct adm1025_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 adm1025_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &adm1025_group)))
  goto exit_free;


 config = i2c_smbus_read_byte_data(client, ADM1025_REG_CONFIG);
 if (!(config & 0x20)) {
  if ((err = sysfs_create_group(&client->dev.kobj,
           &adm1025_group_in4)))
   goto exit_remove;
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &adm1025_group);
 sysfs_remove_group(&client->dev.kobj, &adm1025_group_in4);
exit_free:
 kfree(data);
exit:
 return err;
}
