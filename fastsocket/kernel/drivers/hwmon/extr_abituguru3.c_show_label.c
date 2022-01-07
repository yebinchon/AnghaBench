
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru3_data {TYPE_1__* sensors; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct abituguru3_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_label(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru3_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", data->sensors[attr->index].name);
}
