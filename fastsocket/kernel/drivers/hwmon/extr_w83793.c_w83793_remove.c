
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct w83793_data {int ** lm75; int hwmon_dev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {int dev_attr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_attr_vrm ;
 int device_remove_file (struct device*,int *) ;
 int hwmon_device_unregister (int ) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int *) ;
 int kfree (struct w83793_data*) ;
 TYPE_1__* sda_single_files ;
 TYPE_1__* w83793_left_fan ;
 TYPE_1__* w83793_left_pwm ;
 TYPE_1__* w83793_sensor_attr_2 ;
 TYPE_1__* w83793_temp ;
 TYPE_1__* w83793_vid ;

__attribute__((used)) static int w83793_remove(struct i2c_client *client)
{
 struct w83793_data *data = i2c_get_clientdata(client);
 struct device *dev = &client->dev;
 int i;

 hwmon_device_unregister(data->hwmon_dev);

 for (i = 0; i < ARRAY_SIZE(w83793_sensor_attr_2); i++)
  device_remove_file(dev,
       &w83793_sensor_attr_2[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(sda_single_files); i++)
  device_remove_file(dev, &sda_single_files[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(w83793_vid); i++)
  device_remove_file(dev, &w83793_vid[i].dev_attr);
 device_remove_file(dev, &dev_attr_vrm);

 for (i = 0; i < ARRAY_SIZE(w83793_left_fan); i++)
  device_remove_file(dev, &w83793_left_fan[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(w83793_left_pwm); i++)
  device_remove_file(dev, &w83793_left_pwm[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(w83793_temp); i++)
  device_remove_file(dev, &w83793_temp[i].dev_attr);

 if (data->lm75[0] != ((void*)0))
  i2c_unregister_device(data->lm75[0]);
 if (data->lm75[1] != ((void*)0))
  i2c_unregister_device(data->lm75[1]);

 kfree(data);

 return 0;
}
