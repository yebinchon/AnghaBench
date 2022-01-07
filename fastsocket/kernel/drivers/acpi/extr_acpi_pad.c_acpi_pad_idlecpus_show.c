
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int cpumask_scnprintf (char*,int ,int ) ;
 int pad_busy_cpus_bits ;
 int to_cpumask (int ) ;

__attribute__((used)) static ssize_t acpi_pad_idlecpus_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 return cpumask_scnprintf(buf, PAGE_SIZE,
  to_cpumask(pad_busy_cpus_bits));
}
