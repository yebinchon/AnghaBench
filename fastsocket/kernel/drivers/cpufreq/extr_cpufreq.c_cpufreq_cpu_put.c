
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int kobj; } ;
struct TYPE_2__ {int owner; } ;


 TYPE_1__* cpufreq_driver ;
 int kobject_put (int *) ;
 int module_put (int ) ;

void cpufreq_cpu_put(struct cpufreq_policy *data)
{
 kobject_put(&data->kobj);
 module_put(cpufreq_driver->owner);
}
