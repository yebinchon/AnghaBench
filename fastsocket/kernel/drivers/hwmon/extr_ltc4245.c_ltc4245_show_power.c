
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {scalar_t__ index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 unsigned int abs (int const) ;
 unsigned int ltc4245_get_current (struct device*,scalar_t__) ;
 int ltc4245_get_voltage (struct device*,scalar_t__) ;
 int snprintf (char*,int ,char*,unsigned int const) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4245_show_power(struct device *dev,
      struct device_attribute *da,
      char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 const unsigned int curr = ltc4245_get_current(dev, attr->index);
 const int output_voltage = ltc4245_get_voltage(dev, attr->index+1);


 const unsigned int power = abs(output_voltage * curr);

 return snprintf(buf, PAGE_SIZE, "%u\n", power);
}
