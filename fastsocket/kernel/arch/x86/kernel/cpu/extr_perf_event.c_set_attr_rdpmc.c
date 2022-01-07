
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int attr_rdpmc; } ;


 int change_rdpmc ;
 unsigned long simple_strtoul (char const*,int *,int ) ;
 int smp_call_function (int ,void*,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static ssize_t set_attr_rdpmc(struct device *cdev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 unsigned long val = simple_strtoul(buf, ((void*)0), 0);

 if (!!val != !!x86_pmu.attr_rdpmc) {
  x86_pmu.attr_rdpmc = !!val;
  smp_call_function(change_rdpmc, (void *)val, 1);
 }

 return count;
}
