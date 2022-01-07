
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct it87_data* it87_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct it87_data *data = it87_update_device(dev);
 return sprintf(buf, "%u\n", data->alarms);
}
