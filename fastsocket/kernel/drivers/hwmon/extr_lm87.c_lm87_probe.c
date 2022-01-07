
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct lm87_data {int* in_scale; int channel; int config; int hwmon_dev; int vrm; int update_lock; scalar_t__ valid; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_19__ {int kobj; } ;
struct i2c_client {TYPE_9__ dev; } ;
struct TYPE_18__ {int dev_attr; } ;
struct TYPE_17__ {int dev_attr; } ;
struct TYPE_16__ {int dev_attr; } ;
struct TYPE_15__ {int dev_attr; } ;
struct TYPE_14__ {int dev_attr; } ;
struct TYPE_13__ {int dev_attr; } ;
struct TYPE_12__ {int dev_attr; } ;
struct TYPE_11__ {int dev_attr; } ;


 int CHAN_NO_FAN (int) ;
 int CHAN_NO_VID ;
 int CHAN_TEMP3 ;
 int CHAN_VCC_5V ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LM87_REG_CONFIG ;
 int PTR_ERR (int ) ;
 int dev_attr_cpu0_vid ;
 int dev_attr_fan1_div ;
 int dev_attr_fan1_input ;
 int dev_attr_fan1_min ;
 int dev_attr_fan2_div ;
 int dev_attr_fan2_input ;
 int dev_attr_fan2_min ;
 int dev_attr_in0_input ;
 int dev_attr_in0_max ;
 int dev_attr_in0_min ;
 int dev_attr_in5_input ;
 int dev_attr_in5_max ;
 int dev_attr_in5_min ;
 int dev_attr_in6_input ;
 int dev_attr_in6_max ;
 int dev_attr_in6_min ;
 int dev_attr_in7_input ;
 int dev_attr_in7_max ;
 int dev_attr_in7_min ;
 int dev_attr_temp3_crit ;
 int dev_attr_temp3_input ;
 int dev_attr_temp3_max ;
 int dev_attr_temp3_min ;
 int dev_attr_vrm ;
 int device_create_file (TYPE_9__*,int *) ;
 int hwmon_device_register (TYPE_9__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm87_data*) ;
 int kfree (struct lm87_data*) ;
 struct lm87_data* kzalloc (int,int ) ;
 int lm87_group ;
 int lm87_group_opt ;
 int lm87_init_client (struct i2c_client*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;
 int mutex_init (int *) ;
 TYPE_8__ sensor_dev_attr_fan1_alarm ;
 TYPE_7__ sensor_dev_attr_fan2_alarm ;
 TYPE_6__ sensor_dev_attr_in0_alarm ;
 TYPE_5__ sensor_dev_attr_in5_alarm ;
 TYPE_4__ sensor_dev_attr_in6_alarm ;
 TYPE_3__ sensor_dev_attr_in7_alarm ;
 TYPE_2__ sensor_dev_attr_temp3_alarm ;
 TYPE_1__ sensor_dev_attr_temp3_fault ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int vid_which_vrm () ;

__attribute__((used)) static int lm87_probe(struct i2c_client *new_client,
        const struct i2c_device_id *id)
{
 struct lm87_data *data;
 int err;

 data = kzalloc(sizeof(struct lm87_data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 i2c_set_clientdata(new_client, data);
 data->valid = 0;
 mutex_init(&data->update_lock);


 lm87_init_client(new_client);

 data->in_scale[0] = 2500;
 data->in_scale[1] = 2700;
 data->in_scale[2] = (data->channel & CHAN_VCC_5V) ? 5000 : 3300;
 data->in_scale[3] = 5000;
 data->in_scale[4] = 12000;
 data->in_scale[5] = 2700;
 data->in_scale[6] = 1875;
 data->in_scale[7] = 1875;


 if ((err = sysfs_create_group(&new_client->dev.kobj, &lm87_group)))
  goto exit_free;

 if (data->channel & CHAN_NO_FAN(0)) {
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_in6_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in6_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in6_max))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_in6_alarm.dev_attr)))
   goto exit_remove;
 } else {
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_fan1_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_fan1_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_fan1_div))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_fan1_alarm.dev_attr)))
   goto exit_remove;
 }

 if (data->channel & CHAN_NO_FAN(1)) {
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_in7_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in7_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in7_max))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_in7_alarm.dev_attr)))
   goto exit_remove;
 } else {
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_fan2_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_fan2_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_fan2_div))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_fan2_alarm.dev_attr)))
   goto exit_remove;
 }

 if (data->channel & CHAN_TEMP3) {
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_temp3_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_temp3_max))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_temp3_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_temp3_crit))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_temp3_alarm.dev_attr))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_temp3_fault.dev_attr)))
   goto exit_remove;
 } else {
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_in0_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in0_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in0_max))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_in0_alarm.dev_attr))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in5_input))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in5_min))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_in5_max))
   || (err = device_create_file(&new_client->dev,
     &sensor_dev_attr_in5_alarm.dev_attr)))
   goto exit_remove;
 }

 if (!(data->channel & CHAN_NO_VID)) {
  data->vrm = vid_which_vrm();
  if ((err = device_create_file(&new_client->dev,
     &dev_attr_cpu0_vid))
   || (err = device_create_file(&new_client->dev,
     &dev_attr_vrm)))
   goto exit_remove;
 }

 data->hwmon_dev = hwmon_device_register(&new_client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 sysfs_remove_group(&new_client->dev.kobj, &lm87_group);
 sysfs_remove_group(&new_client->dev.kobj, &lm87_group_opt);
exit_free:
 lm87_write_value(new_client, LM87_REG_CONFIG, data->config);
 kfree(data);
exit:
 return err;
}
