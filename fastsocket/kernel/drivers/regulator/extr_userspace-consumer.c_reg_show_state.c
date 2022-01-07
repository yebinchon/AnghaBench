
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userspace_consumer_data {scalar_t__ enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct userspace_consumer_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t reg_show_state(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct userspace_consumer_data *data = dev_get_drvdata(dev);

 if (data->enabled)
  return sprintf(buf, "enabled\n");

 return sprintf(buf, "disabled\n");
}
