
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm77_data {int temp_min; int temp_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm77_data* lm77_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_temp_min_hyst(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lm77_data *data = lm77_update_device(dev);
 return sprintf(buf, "%d\n", data->temp_min + data->temp_hyst);
}
