
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics932s401_data {int* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ICS932S401_CPU_ALT ;
 int ICS932S401_FS_MASK ;
 int ICS932S401_MN_ENABLED ;
 size_t ICS932S401_REG_CFG7 ;
 size_t ICS932S401_REG_CTRL ;
 int calculate_cpu_freq (struct ics932s401_data*) ;
 int* fs_speeds ;
 struct ics932s401_data* ics932s401_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_cpu_clock_sel(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct ics932s401_data *data = ics932s401_update_device(dev);
 int freq;

 if (data->regs[ICS932S401_REG_CTRL] & ICS932S401_MN_ENABLED)
  freq = calculate_cpu_freq(data);
 else {

  int fid = data->regs[ICS932S401_REG_CFG7] & ICS932S401_FS_MASK;
  freq = fs_speeds[fid];
  if (data->regs[ICS932S401_REG_CTRL] & ICS932S401_CPU_ALT) {
   switch (freq) {
   case 166666:
    freq = 160000;
    break;
   case 333333:
    freq = 320000;
    break;
   }
  }
 }

 return sprintf(buf, "%d\n", freq);
}
