
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long idle_pct ;
 int isolated_cpus_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t acpi_pad_idlepct_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long num;
 if (strict_strtoul(buf, 0, &num))
  return -EINVAL;
 if (num < 1 || num >= 100)
  return -EINVAL;
 mutex_lock(&isolated_cpus_lock);
 idle_pct = num;
 mutex_unlock(&isolated_cpus_lock);
 return count;
}
