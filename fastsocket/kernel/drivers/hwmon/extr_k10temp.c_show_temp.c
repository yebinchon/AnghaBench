
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int REG_REPORTED_TEMPERATURE ;
 int pci_read_config_dword (int ,int ,int*) ;
 int sprintf (char*,char*,int) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 u32 regval;

 pci_read_config_dword(to_pci_dev(dev),
         REG_REPORTED_TEMPERATURE, &regval);
 return sprintf(buf, "%u\n", (regval >> 21) * 125);
}
