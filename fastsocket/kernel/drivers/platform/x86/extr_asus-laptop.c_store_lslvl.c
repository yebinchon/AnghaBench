
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int parse_arg (char const*,size_t,int*) ;
 int set_light_sens_level (int) ;

__attribute__((used)) static ssize_t store_lslvl(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 int rv, value;

 rv = parse_arg(buf, count, &value);
 if (rv > 0) {
  value = (0 < value) ? ((15 < value) ? 15 : value) : 0;

  set_light_sens_level(value);
 }

 return rv;
}
