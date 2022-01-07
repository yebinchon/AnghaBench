
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm80_data {int temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct lm80_data* lm80_update_device (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_temp_input1(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lm80_data *data = lm80_update_device(dev);
 return sprintf(buf, "%ld\n", TEMP_FROM_REG(data->temp));
}
