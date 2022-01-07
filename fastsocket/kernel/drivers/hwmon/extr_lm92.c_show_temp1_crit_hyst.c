
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int temp1_hyst; int temp1_crit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct lm92_data* lm92_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_temp1_crit_hyst(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lm92_data *data = lm92_update_device(dev);
 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp1_crit)
         - TEMP_FROM_REG(data->temp1_hyst));
}
