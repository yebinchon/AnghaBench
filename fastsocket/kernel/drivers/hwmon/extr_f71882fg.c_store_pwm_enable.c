
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {scalar_t__ type; int pwm_enable; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int F71882FG_REG_PWM_ENABLE ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 scalar_t__ f71858fg ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,int) ;
 scalar_t__ f8000 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm_enable(struct device *dev, struct device_attribute
    *devattr, const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int nr = to_sensor_dev_attr_2(devattr)->index;
 long val = simple_strtol(buf, ((void*)0), 10);


 if (data->type == f8000 && nr == 2 && val != 2)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->pwm_enable = f71882fg_read8(data, F71882FG_REG_PWM_ENABLE);

 if (data->type == f8000 && ((data->pwm_enable >> 2 * nr) & 1)) {
  switch (val) {
  case 2:
   data->pwm_enable &= ~(2 << (2 * nr));
   break;
  case 3:
   data->pwm_enable |= 2 << (2 * nr);
   break;
  default:
   count = -EINVAL;
   goto leave;
  }
 } else {
  switch (val) {
  case 1:

   if (data->type == f71858fg &&
       ((data->pwm_enable >> (2 * nr)) & 1)) {
    count = -EINVAL;
    goto leave;
   }
   data->pwm_enable |= 2 << (2 * nr);
   break;
  case 2:
   data->pwm_enable &= ~(2 << (2 * nr));
   break;
  default:
   count = -EINVAL;
   goto leave;
  }
 }
 f71882fg_write8(data, F71882FG_REG_PWM_ENABLE, data->pwm_enable);
leave:
 mutex_unlock(&data->update_lock);

 return count;
}
