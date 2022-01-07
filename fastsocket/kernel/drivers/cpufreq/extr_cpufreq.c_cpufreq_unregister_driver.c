
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_driver {int name; } ;


 int EINVAL ;
 int cpu_sysdev_class ;
 int cpufreq_cpu_notifier ;
 int cpufreq_debug_disable_ratelimit () ;
 int cpufreq_debug_enable_ratelimit () ;
 struct cpufreq_driver* cpufreq_driver ;
 int cpufreq_driver_lock ;
 int cpufreq_sysdev_driver ;
 int dprintk (char*,int ) ;
 int sysdev_driver_unregister (int *,int *) ;
 int unregister_hotcpu_notifier (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int cpufreq_unregister_driver(struct cpufreq_driver *driver)
{
 unsigned long flags;

 cpufreq_debug_disable_ratelimit();

 if (!cpufreq_driver || (driver != cpufreq_driver)) {
  cpufreq_debug_enable_ratelimit();
  return -EINVAL;
 }

 dprintk("unregistering driver %s\n", driver->name);

 sysdev_driver_unregister(&cpu_sysdev_class, &cpufreq_sysdev_driver);
 unregister_hotcpu_notifier(&cpufreq_cpu_notifier);

 write_lock_irqsave(&cpufreq_driver_lock, flags);
 cpufreq_driver = ((void*)0);
 write_unlock_irqrestore(&cpufreq_driver_lock, flags);

 return 0;
}
