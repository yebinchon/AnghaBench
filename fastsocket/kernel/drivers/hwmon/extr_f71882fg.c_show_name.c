
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f71882fg_data {size_t type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 char** f71882fg_names ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_name(struct device *dev, struct device_attribute *devattr,
 char *buf)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%s\n", f71882fg_names[data->type]);
}
