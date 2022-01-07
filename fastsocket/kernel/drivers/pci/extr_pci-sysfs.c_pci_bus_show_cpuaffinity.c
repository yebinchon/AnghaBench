
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cpumask {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int cpulist_scnprintf (char*,scalar_t__,struct cpumask const*) ;
 struct cpumask* cpumask_of_pcibus (int ) ;
 int cpumask_scnprintf (char*,scalar_t__,struct cpumask const*) ;
 int to_pci_bus (struct device*) ;

__attribute__((used)) static ssize_t pci_bus_show_cpuaffinity(struct device *dev,
     int type,
     struct device_attribute *attr,
     char *buf)
{
 int ret;
 const struct cpumask *cpumask;

 cpumask = cpumask_of_pcibus(to_pci_bus(dev));
 ret = type ?
  cpulist_scnprintf(buf, PAGE_SIZE-2, cpumask) :
  cpumask_scnprintf(buf, PAGE_SIZE-2, cpumask);
 buf[ret++] = '\n';
 buf[ret] = '\0';
 return ret;
}
