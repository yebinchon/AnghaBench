
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX6650_CFG_MODE_MASK ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t get_enable(struct device *dev, struct device_attribute *devattr,
     char *buf)
{
 struct max6650_data *data = max6650_update_device(dev);
 int mode = (data->config & MAX6650_CFG_MODE_MASK) >> 4;
 int sysfs_modes[4] = {0, 1, 2, 1};

 return sprintf(buf, "%d\n", sysfs_modes[mode]);
}
