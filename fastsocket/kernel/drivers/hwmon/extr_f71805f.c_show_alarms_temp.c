
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f71805f_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct f71805f_data* f71805f_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms_temp(struct device *dev, struct device_attribute
    *devattr, char *buf)
{
 struct f71805f_data *data = f71805f_update_device(dev);

 return sprintf(buf, "%lu\n", (data->alarms >> 11) & 0x07);
}
