
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1031_data {scalar_t__ chip_type; int hwmon_dev; int * chan_select_table; int update_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ adm1030 ;
 scalar_t__ adm1031 ;
 int adm1031_group ;
 int adm1031_group_opt ;
 int adm1031_init_client (struct i2c_client*) ;
 int auto_channel_select_table_adm1030 ;
 int auto_channel_select_table_adm1031 ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1031_data*) ;
 int kfree (struct adm1031_data*) ;
 struct adm1031_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adm1031_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adm1031_data *data;
 int err;

 data = kzalloc(sizeof(struct adm1031_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 data->chip_type = id->driver_data;
 mutex_init(&data->update_lock);

 if (data->chip_type == adm1030)
  data->chan_select_table = &auto_channel_select_table_adm1030;
 else
  data->chan_select_table = &auto_channel_select_table_adm1031;


 adm1031_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &adm1031_group)))
  goto exit_free;

 if (data->chip_type == adm1031) {
  if ((err = sysfs_create_group(&client->dev.kobj,
      &adm1031_group_opt)))
   goto exit_remove;
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_group(&client->dev.kobj, &adm1031_group);
 sysfs_remove_group(&client->dev.kobj, &adm1031_group_opt);
exit_free:
 kfree(data);
exit:
 return err;
}
