
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8591_data {int control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PCF8591_CONTROL_AOEF ;
 struct pcf8591_data* i2c_get_clientdata (int ) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t show_out0_enable(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pcf8591_data *data = i2c_get_clientdata(to_i2c_client(dev));
 return sprintf(buf, "%u\n", !(!(data->control & PCF8591_CONTROL_AOEF)));
}
