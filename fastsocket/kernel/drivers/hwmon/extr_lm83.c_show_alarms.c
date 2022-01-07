
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm83_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm83_data* lm83_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_alarms(struct device *dev, struct device_attribute *dummy,
      char *buf)
{
 struct lm83_data *data = lm83_update_device(dev);
 return sprintf(buf, "%d\n", data->alarms);
}
