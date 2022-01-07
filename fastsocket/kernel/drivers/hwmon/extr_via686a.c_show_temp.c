
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int * temp; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG10 (int ) ;
 int sprintf (char*,char*,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct via686a_data* via686a_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *da,
  char *buf) {
 struct via686a_data *data = via686a_update_device(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 return sprintf(buf, "%ld\n", TEMP_FROM_REG10(data->temp[nr]));
}
