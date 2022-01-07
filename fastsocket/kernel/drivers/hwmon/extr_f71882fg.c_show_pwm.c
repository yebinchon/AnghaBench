
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int pwm_enable; int* pwm; int update_lock; int * fan_full_speed; int * fan_target; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct f71882fg_data* f71882fg_update_device (struct device*) ;
 int fan_from_reg (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm(struct device *dev,
   struct device_attribute *devattr, char *buf)
{
 struct f71882fg_data *data = f71882fg_update_device(dev);
 int val, nr = to_sensor_dev_attr_2(devattr)->index;
 mutex_lock(&data->update_lock);
 if (data->pwm_enable & (1 << (2 * nr)))

  val = data->pwm[nr];
 else {

  val = 255 * fan_from_reg(data->fan_target[nr])
   / fan_from_reg(data->fan_full_speed[nr]);
 }
 mutex_unlock(&data->update_lock);
 return sprintf(buf, "%d\n", val);
}
