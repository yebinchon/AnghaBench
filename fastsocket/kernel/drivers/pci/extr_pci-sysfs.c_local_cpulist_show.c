
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cpumask {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bus; } ;


 scalar_t__ PAGE_SIZE ;
 int cpulist_scnprintf (char*,scalar_t__,struct cpumask const*) ;
 struct cpumask* cpumask_of_pcibus (int ) ;
 TYPE_1__* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t local_cpulist_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 const struct cpumask *mask;
 int len;

 mask = cpumask_of_pcibus(to_pci_dev(dev)->bus);
 len = cpulist_scnprintf(buf, PAGE_SIZE-2, mask);
 buf[len++] = '\n';
 buf[len] = '\0';
 return len;
}
