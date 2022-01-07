
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics932s401_data {int* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BUG () ;
 int ICS932S401_CFG1_SPREAD ;
 size_t ICS932S401_REG_CFG2 ;
 int ICS932S401_REG_CPU_SPREAD1 ;
 int ICS932S401_REG_SRC_SPREAD1 ;
 unsigned long ICS932S401_SPREAD_MASK ;
 struct device_attribute dev_attr_cpu_spread ;
 struct device_attribute dev_attr_src_spread ;
 struct ics932s401_data* ics932s401_update_device (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_spread(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct ics932s401_data *data = ics932s401_update_device(dev);
 int reg;
 unsigned long val;

 if (!(data->regs[ICS932S401_REG_CFG2] & ICS932S401_CFG1_SPREAD))
  return sprintf(buf, "0%%\n");

 if (devattr == &dev_attr_src_spread)
  reg = ICS932S401_REG_SRC_SPREAD1;
 else if (devattr == &dev_attr_cpu_spread)
  reg = ICS932S401_REG_CPU_SPREAD1;
 else
  BUG();

 val = data->regs[reg] | (data->regs[reg + 1] << 8);
 val &= ICS932S401_SPREAD_MASK;


 val = 500000 * val / 16384;
 return sprintf(buf, "-0.%lu%%\n", val);
}
