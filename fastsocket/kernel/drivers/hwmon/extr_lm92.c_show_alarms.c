
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int temp1_input; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ALARMS_FROM_REG (int ) ;
 struct lm92_data* lm92_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lm92_data *data = lm92_update_device(dev);
 return sprintf(buf, "%d\n", ALARMS_FROM_REG(data->temp1_input));
}
