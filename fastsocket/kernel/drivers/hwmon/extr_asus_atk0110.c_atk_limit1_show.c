
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atk_sensor_data {int limit1; scalar_t__ type; } ;
typedef int ssize_t ;


 scalar_t__ HWMON_TYPE_TEMP ;
 struct atk_sensor_data* limit1_to_atk_sensor (struct device_attribute*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t atk_limit1_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct atk_sensor_data *s = limit1_to_atk_sensor(attr);
 u64 value = s->limit1;

 if (s->type == HWMON_TYPE_TEMP)
  value *= 100;

 return sprintf(buf, "%lld\n", value);
}
