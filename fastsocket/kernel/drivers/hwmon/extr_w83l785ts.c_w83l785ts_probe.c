
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct w83l785ts_data {int hwmon_dev; scalar_t__* temp; int update_lock; scalar_t__ valid; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_3__ {int dev_attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int hwmon_device_register (int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct w83l785ts_data*) ;
 int kfree (struct w83l785ts_data*) ;
 struct w83l785ts_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_2__ sensor_dev_attr_temp1_input ;
 TYPE_1__ sensor_dev_attr_temp1_max ;

__attribute__((used)) static int w83l785ts_probe(struct i2c_client *new_client,
      const struct i2c_device_id *id)
{
 struct w83l785ts_data *data;
 int err = 0;

 data = kzalloc(sizeof(struct w83l785ts_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(new_client, data);
 data->valid = 0;
 mutex_init(&data->update_lock);


 data->temp[1] = data->temp[0] = 0;






 err = device_create_file(&new_client->dev,
     &sensor_dev_attr_temp1_input.dev_attr);
 if (err)
  goto exit_remove;

 err = device_create_file(&new_client->dev,
     &sensor_dev_attr_temp1_max.dev_attr);
 if (err)
  goto exit_remove;


 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 device_remove_file(&new_client->dev,
      &sensor_dev_attr_temp1_input.dev_attr);
 device_remove_file(&new_client->dev,
      &sensor_dev_attr_temp1_max.dev_attr);
 kfree(data);
exit:
 return err;
}
