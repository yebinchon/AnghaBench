
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1619_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct max1619_data* max1619_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct max1619_data *data = max1619_update_device(dev);
 return sprintf(buf, "%d\n", data->alarms);
}
