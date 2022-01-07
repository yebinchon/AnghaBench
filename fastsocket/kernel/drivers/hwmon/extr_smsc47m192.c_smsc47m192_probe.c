
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsc47m192_data {int hwmon_dev; int update_lock; int vrm; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SMSC47M192_REG_CONFIG ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct smsc47m192_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int kfree (struct smsc47m192_data*) ;
 struct smsc47m192_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int smsc47m192_group ;
 int smsc47m192_group_in4 ;
 int smsc47m192_init_client (struct i2c_client*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int vid_which_vrm () ;

__attribute__((used)) static int smsc47m192_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct smsc47m192_data *data;
 int config;
 int err;

 data = kzalloc(sizeof(struct smsc47m192_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 data->vrm = vid_which_vrm();
 mutex_init(&data->update_lock);


 smsc47m192_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &smsc47m192_group)))
  goto exit_free;


 config = i2c_smbus_read_byte_data(client, SMSC47M192_REG_CONFIG);
 if (!(config & 0x20)) {
  if ((err = sysfs_create_group(&client->dev.kobj,
           &smsc47m192_group_in4)))
   goto exit_remove_files;
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&client->dev.kobj, &smsc47m192_group);
 sysfs_remove_group(&client->dev.kobj, &smsc47m192_group_in4);
exit_free:
 kfree(data);
exit:
 return err;
}
