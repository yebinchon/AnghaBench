
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {int nr; int index; } ;
struct f71805f_data {int update_lock; TYPE_1__* auto_points; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int * fan; } ;


 int F71805F_REG_PWM_AUTO_POINT_FAN (int,int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int f71805f_write16 (struct f71805f_data*,int ,int ) ;
 int fan_to_reg (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_auto_point_fan(struct device *dev,
          struct device_attribute *devattr,
          const char* buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 int pwmnr = attr->nr;
 int apnr = attr->index;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->auto_points[pwmnr].fan[apnr] = fan_to_reg(val);
 f71805f_write16(data, F71805F_REG_PWM_AUTO_POINT_FAN(pwmnr, apnr),
          data->auto_points[pwmnr].fan[apnr]);
 mutex_unlock(&data->update_lock);

 return count;
}
