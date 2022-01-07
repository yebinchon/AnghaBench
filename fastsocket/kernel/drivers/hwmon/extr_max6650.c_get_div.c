
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t get_div(struct device *dev, struct device_attribute *devattr,
         char *buf)
{
 struct max6650_data *data = max6650_update_device(dev);

 return sprintf(buf, "%d\n", DIV_FROM_REG(data->count));
}
