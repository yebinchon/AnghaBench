
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thmc50_data {int analog_out; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct thmc50_data* thmc50_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_analog_out(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct thmc50_data *data = thmc50_update_device(dev);
 return sprintf(buf, "%d\n", data->analog_out);
}
