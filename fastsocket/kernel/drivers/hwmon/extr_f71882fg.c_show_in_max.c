
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f71882fg_data {int in1_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct f71882fg_data* f71882fg_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_in_max(struct device *dev, struct device_attribute
 *devattr, char *buf)
{
 struct f71882fg_data *data = f71882fg_update_device(dev);

 return sprintf(buf, "%d\n", data->in1_max * 8);
}
