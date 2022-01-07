
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_menlow_attribute {int handle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CELSIUS_TO_KELVIN (int) ;
 int EINVAL ;
 int sensor_set_auxtrip (int ,int ,int ) ;
 int sscanf (char const*,char*,int*) ;
 struct intel_menlow_attribute* to_intel_menlow_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t aux0_store(struct device *dev,
     struct device_attribute *dev_attr,
     const char *buf, size_t count)
{
 struct intel_menlow_attribute *attr = to_intel_menlow_attr(dev_attr);
 int value;
 int result;


 if (!sscanf(buf, "%d", &value))
  return -EINVAL;

 if (value < 0)
  return -EINVAL;

 result = sensor_set_auxtrip(attr->handle, 0, CELSIUS_TO_KELVIN(value));
 return result ? result : count;
}
