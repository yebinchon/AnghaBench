
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct atxp1_data {int vrm; int hwmon_dev; int update_lock; scalar_t__ valid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atxp1_group ;
 int dev_info (TYPE_1__*,char*,int,int) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct atxp1_data*) ;
 int kfree (struct atxp1_data*) ;
 struct atxp1_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int vid_which_vrm () ;

__attribute__((used)) static int atxp1_probe(struct i2c_client *new_client,
         const struct i2c_device_id *id)
{
 struct atxp1_data *data;
 int err;

 data = kzalloc(sizeof(struct atxp1_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }


 data->vrm = vid_which_vrm();

 i2c_set_clientdata(new_client, data);
 data->valid = 0;

 mutex_init(&data->update_lock);


 if ((err = sysfs_create_group(&new_client->dev.kobj, &atxp1_group)))
  goto exit_free;

 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 dev_info(&new_client->dev, "Using VRM: %d.%d\n",
    data->vrm / 10, data->vrm % 10);

 return 0;

exit_remove_files:
 sysfs_remove_group(&new_client->dev.kobj, &atxp1_group);
exit_free:
 kfree(data);
exit:
 return err;
}
