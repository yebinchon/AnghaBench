
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int vrm; } ;
typedef int ssize_t ;


 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_vrm_reg(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", data->vrm);
}
