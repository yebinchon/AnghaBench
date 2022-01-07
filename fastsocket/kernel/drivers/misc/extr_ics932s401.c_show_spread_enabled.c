
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics932s401_data {int* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ICS932S401_CFG1_SPREAD ;
 size_t ICS932S401_REG_CFG2 ;
 struct ics932s401_data* ics932s401_update_device (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t show_spread_enabled(struct device *dev,
       struct device_attribute *devattr,
       char *buf)
{
 struct ics932s401_data *data = ics932s401_update_device(dev);

 if (data->regs[ICS932S401_REG_CFG2] & ICS932S401_CFG1_SPREAD)
  return sprintf(buf, "1\n");

 return sprintf(buf, "0\n");
}
