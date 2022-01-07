
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int alarm; } ;
typedef int ssize_t ;


 struct adm1031_data* adm1031_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct adm1031_data *data = adm1031_update_device(dev);
 return sprintf(buf, "%d\n", data->alarm);
}
