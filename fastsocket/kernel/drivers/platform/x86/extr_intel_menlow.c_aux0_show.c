
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_menlow_attribute {int handle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int KELVIN_TO_CELSIUS (unsigned long long) ;
 int sensor_get_auxtrip (int ,int ,unsigned long long*) ;
 int sprintf (char*,char*,int ) ;
 struct intel_menlow_attribute* to_intel_menlow_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t aux0_show(struct device *dev,
    struct device_attribute *dev_attr, char *buf)
{
 struct intel_menlow_attribute *attr = to_intel_menlow_attr(dev_attr);
 unsigned long long value;
 int result;

 result = sensor_get_auxtrip(attr->handle, 0, &value);

 return result ? result : sprintf(buf, "%lu", KELVIN_TO_CELSIUS(value));
}
