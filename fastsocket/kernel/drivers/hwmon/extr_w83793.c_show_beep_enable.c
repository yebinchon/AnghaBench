
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int beep_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_beep_enable(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83793_data *data = w83793_update_device(dev);
 return sprintf(buf, "%u\n", (data->beep_enable >> 1) & 0x01);
}
