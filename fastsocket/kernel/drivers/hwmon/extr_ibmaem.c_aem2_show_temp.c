
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {int* temp; int (* update ) (struct aem_data*) ;} ;
typedef int ssize_t ;


 struct aem_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct aem_data*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t aem2_show_temp(struct device *dev,
         struct device_attribute *devattr,
         char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct aem_data *a = dev_get_drvdata(dev);
 a->update(a);

 return sprintf(buf, "%u\n", a->temp[attr->index] * 1000);
}
