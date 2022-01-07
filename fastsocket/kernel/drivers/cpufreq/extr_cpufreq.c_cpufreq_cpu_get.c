
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int kobj; } ;
struct TYPE_2__ {int owner; } ;


 int cpufreq_cpu_data ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_driver_lock ;
 int kobject_get (int *) ;
 int module_put (int ) ;
 unsigned int nr_cpu_ids ;
 struct cpufreq_policy* per_cpu (int ,unsigned int) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int try_module_get (int ) ;

struct cpufreq_policy *cpufreq_cpu_get(unsigned int cpu)
{
 struct cpufreq_policy *data;
 unsigned long flags;

 if (cpu >= nr_cpu_ids)
  goto err_out;


 read_lock_irqsave(&cpufreq_driver_lock, flags);

 if (!cpufreq_driver)
  goto err_out_unlock;

 if (!try_module_get(cpufreq_driver->owner))
  goto err_out_unlock;



 data = per_cpu(cpufreq_cpu_data, cpu);

 if (!data)
  goto err_out_put_module;

 if (!kobject_get(&data->kobj))
  goto err_out_put_module;

 read_unlock_irqrestore(&cpufreq_driver_lock, flags);
 return data;

err_out_put_module:
 module_put(cpufreq_driver->owner);
err_out_unlock:
 read_unlock_irqrestore(&cpufreq_driver_lock, flags);
err_out:
 return ((void*)0);
}
