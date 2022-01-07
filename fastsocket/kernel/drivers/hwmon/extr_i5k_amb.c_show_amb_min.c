
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i5k_amb_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int amb_read_byte (struct i5k_amb_data*,int ) ;
 int amb_reg_temp_min (int ) ;
 struct i5k_amb_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_amb_min(struct device *dev,
        struct device_attribute *devattr,
        char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i5k_amb_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n",
  500 * amb_read_byte(data, amb_reg_temp_min(attr->index)));
}
