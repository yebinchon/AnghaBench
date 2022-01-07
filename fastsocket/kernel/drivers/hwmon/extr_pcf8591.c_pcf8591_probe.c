
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf8591_data {int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_in2_input ;
 int dev_attr_in3_input ;
 int device_create_file (TYPE_1__*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf8591_data*) ;
 int input_mode ;
 int kfree (struct pcf8591_data*) ;
 struct pcf8591_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pcf8591_attr_group ;
 int pcf8591_attr_group_opt ;
 int pcf8591_init_client (struct i2c_client*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int pcf8591_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pcf8591_data *data;
 int err;

 if (!(data = kzalloc(sizeof(struct pcf8591_data), GFP_KERNEL))) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 pcf8591_init_client(client);


 err = sysfs_create_group(&client->dev.kobj, &pcf8591_attr_group);
 if (err)
  goto exit_kfree;


 if (input_mode != 3) {
  if ((err = device_create_file(&client->dev,
           &dev_attr_in2_input)))
   goto exit_sysfs_remove;
 }


 if (input_mode == 0) {
  if ((err = device_create_file(&client->dev,
           &dev_attr_in3_input)))
   goto exit_sysfs_remove;
 }

 return 0;

exit_sysfs_remove:
 sysfs_remove_group(&client->dev.kobj, &pcf8591_attr_group_opt);
 sysfs_remove_group(&client->dev.kobj, &pcf8591_attr_group);
exit_kfree:
 kfree(data);
exit:
 return err;
}
