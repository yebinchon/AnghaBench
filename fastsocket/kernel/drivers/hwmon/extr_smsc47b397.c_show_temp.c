
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47b397_data {int * temp; } ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct smsc47b397_data* smsc47b397_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int temp_from_reg (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute
    *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47b397_data *data = smsc47b397_update_device(dev);
 return sprintf(buf, "%d\n", temp_from_reg(data->temp[attr->index]));
}
