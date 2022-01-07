
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct f71805f_data {int* fan_ctrl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_CTRL_MODE_MASK ;


 struct f71805f_data* f71805f_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_enable(struct device *dev, struct device_attribute
          *devattr, char *buf)
{
 struct f71805f_data *data = f71805f_update_device(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int nr = attr->index;
 int mode;

 switch (data->fan_ctrl[nr] & FAN_CTRL_MODE_MASK) {
 case 129:
  mode = 3;
  break;
 case 128:
  mode = 2;
  break;
 default:
  mode = 1;
 }

 return sprintf(buf, "%d\n", mode);
}
