
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1026_data {int config1; int hwmon_dev; int vrm; int update_lock; } ;


 int CFG1_AIN8_9 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adm1026_group ;
 int adm1026_group_in8_9 ;
 int adm1026_group_temp3 ;
 int adm1026_init_client (struct i2c_client*) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1026_data*) ;
 int kfree (struct adm1026_data*) ;
 struct adm1026_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int vid_which_vrm () ;

__attribute__((used)) static int adm1026_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adm1026_data *data;
 int err;

 data = kzalloc(sizeof(struct adm1026_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 data->vrm = vid_which_vrm();


 adm1026_init_client(client);


 if ((err = sysfs_create_group(&client->dev.kobj, &adm1026_group)))
  goto exitfree;
 if (data->config1 & CFG1_AIN8_9)
  err = sysfs_create_group(&client->dev.kobj,
      &adm1026_group_in8_9);
 else
  err = sysfs_create_group(&client->dev.kobj,
      &adm1026_group_temp3);
 if (err)
  goto exitremove;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exitremove;
 }

 return 0;


exitremove:
 sysfs_remove_group(&client->dev.kobj, &adm1026_group);
 if (data->config1 & CFG1_AIN8_9)
  sysfs_remove_group(&client->dev.kobj, &adm1026_group_in8_9);
 else
  sysfs_remove_group(&client->dev.kobj, &adm1026_group_temp3);
exitfree:
 kfree(data);
exit:
 return err;
}
