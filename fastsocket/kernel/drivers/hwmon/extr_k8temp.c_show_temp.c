
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct k8temp_data {int temp_offset; int ** temp; scalar_t__ swap_core_select; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct k8temp_data* k8temp_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute_2 *attr =
     to_sensor_dev_attr_2(devattr);
 int core = attr->nr;
 int place = attr->index;
 int temp;
 struct k8temp_data *data = k8temp_update_device(dev);

 if (data->swap_core_select)
  core = core ? 0 : 1;

 temp = TEMP_FROM_REG(data->temp[core][place]) + data->temp_offset;

 return sprintf(buf, "%d\n", temp);
}
