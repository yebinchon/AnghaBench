
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int temp_crit_ext; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct lm87_data* lm87_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_temp_crit_ext(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lm87_data *data = lm87_update_device(dev);
 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp_crit_ext));
}
