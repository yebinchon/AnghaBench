
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_consumer_data {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;






 struct virtual_consumer_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t show_mode(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct virtual_consumer_data *data = dev_get_drvdata(dev);

 switch (data->mode) {
 case 131:
  return sprintf(buf, "fast\n");
 case 129:
  return sprintf(buf, "normal\n");
 case 130:
  return sprintf(buf, "idle\n");
 case 128:
  return sprintf(buf, "standby\n");
 default:
  return sprintf(buf, "unknown\n");
 }
}
