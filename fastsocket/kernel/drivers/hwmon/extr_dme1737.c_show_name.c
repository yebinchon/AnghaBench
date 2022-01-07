
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dme1737_data {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_name(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct dme1737_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", data->name);
}
