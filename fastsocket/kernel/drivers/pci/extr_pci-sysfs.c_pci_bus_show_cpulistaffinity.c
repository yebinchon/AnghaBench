
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int pci_bus_show_cpuaffinity (struct device*,int,struct device_attribute*,char*) ;

__attribute__((used)) static inline ssize_t pci_bus_show_cpulistaffinity(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 return pci_bus_show_cpuaffinity(dev, 1, attr, buf);
}
