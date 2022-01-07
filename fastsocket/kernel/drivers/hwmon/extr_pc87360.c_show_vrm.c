
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc87360_data {int vrm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pc87360_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_vrm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pc87360_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%u\n", data->vrm);
}
