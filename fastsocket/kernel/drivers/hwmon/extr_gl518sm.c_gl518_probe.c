
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct gl518_data {scalar_t__ type; int alarm_mask; int hwmon_dev; int update_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GL518_REG_REVISION ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int gl518_group ;
 int gl518_group_r80 ;
 int gl518_init_client (struct i2c_client*) ;
 int gl518_read_value (struct i2c_client*,int ) ;
 scalar_t__ gl518sm_r00 ;
 scalar_t__ gl518sm_r80 ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct gl518_data*) ;
 int kfree (struct gl518_data*) ;
 struct gl518_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int gl518_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct gl518_data *data;
 int err, revision;

 data = kzalloc(sizeof(struct gl518_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 revision = gl518_read_value(client, GL518_REG_REVISION);
 data->type = revision == 0x80 ? gl518sm_r80 : gl518sm_r00;
 mutex_init(&data->update_lock);


 data->alarm_mask = 0xff;
 gl518_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &gl518_group)))
  goto exit_free;
 if (data->type == gl518sm_r80)
  if ((err = sysfs_create_group(&client->dev.kobj,
           &gl518_group_r80)))
   goto exit_remove_files;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&client->dev.kobj, &gl518_group);
 if (data->type == gl518sm_r80)
  sysfs_remove_group(&client->dev.kobj, &gl518_group_r80);
exit_free:
 kfree(data);
exit:
 return err;
}
