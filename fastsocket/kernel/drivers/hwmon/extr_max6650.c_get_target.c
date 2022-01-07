
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int speed; int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int clock ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t get_target(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct max6650_data *data = max6650_update_device(dev);
 int kscale, ktach, rpm;
 kscale = DIV_FROM_REG(data->config);
 ktach = data->speed;
 rpm = 60 * kscale * clock / (256 * (ktach + 1));
 return sprintf(buf, "%d\n", rpm);
}
