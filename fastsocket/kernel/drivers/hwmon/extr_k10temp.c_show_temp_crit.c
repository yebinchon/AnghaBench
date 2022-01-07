
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int REG_HARDWARE_THERMAL_CONTROL ;
 int pci_read_config_dword (int ,int ,int*) ;
 int sprintf (char*,char*,int) ;
 int to_pci_dev (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp_crit(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int show_hyst = attr->index;
 u32 regval;
 int value;

 pci_read_config_dword(to_pci_dev(dev),
         REG_HARDWARE_THERMAL_CONTROL, &regval);
 value = ((regval >> 16) & 0x7f) * 500 + 52000;
 if (show_hyst)
  value -= ((regval >> 24) & 0xf) * 500;
 return sprintf(buf, "%d\n", value);
}
