
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int alarms; } ;
typedef int ssize_t ;


 struct asb100_data* asb100_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct asb100_data *data = asb100_update_device(dev);
 return sprintf(buf, "%u\n", data->alarms);
}
