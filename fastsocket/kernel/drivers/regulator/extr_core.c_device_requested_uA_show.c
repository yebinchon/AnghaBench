
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int uA_load; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct regulator* get_device_regulator (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t device_requested_uA_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct regulator *regulator;

 regulator = get_device_regulator(dev);
 if (regulator == ((void*)0))
  return 0;

 return sprintf(buf, "%d\n", regulator->uA_load);
}
