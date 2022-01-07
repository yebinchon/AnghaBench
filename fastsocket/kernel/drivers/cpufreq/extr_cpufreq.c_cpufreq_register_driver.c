
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_driver {int flags; int name; scalar_t__ setpolicy; int target; int init; int verify; } ;


 int CPUFREQ_CONST_LOOPS ;
 int CPUFREQ_STICKY ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ cpu_possible (int) ;
 int cpu_sysdev_class ;
 int cpufreq_cpu_data ;
 int cpufreq_cpu_notifier ;
 int cpufreq_debug_enable_ratelimit () ;
 struct cpufreq_driver* cpufreq_driver ;
 int cpufreq_driver_lock ;
 int cpufreq_sysdev_driver ;
 int dprintk (char*,int ) ;
 int nr_cpu_ids ;
 scalar_t__ per_cpu (int ,int) ;
 int register_hotcpu_notifier (int *) ;
 int sysdev_driver_register (int *,int *) ;
 int sysdev_driver_unregister (int *,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int cpufreq_register_driver(struct cpufreq_driver *driver_data)
{
 unsigned long flags;
 int ret;

 if (!driver_data || !driver_data->verify || !driver_data->init ||
     ((!driver_data->setpolicy) && (!driver_data->target)))
  return -EINVAL;

 dprintk("trying to register driver %s\n", driver_data->name);

 if (driver_data->setpolicy)
  driver_data->flags |= CPUFREQ_CONST_LOOPS;

 write_lock_irqsave(&cpufreq_driver_lock, flags);
 if (cpufreq_driver) {
  write_unlock_irqrestore(&cpufreq_driver_lock, flags);
  return -EBUSY;
 }
 cpufreq_driver = driver_data;
 write_unlock_irqrestore(&cpufreq_driver_lock, flags);

 ret = sysdev_driver_register(&cpu_sysdev_class,
     &cpufreq_sysdev_driver);

 if ((!ret) && !(cpufreq_driver->flags & CPUFREQ_STICKY)) {
  int i;
  ret = -ENODEV;


  for (i = 0; i < nr_cpu_ids; i++)
   if (cpu_possible(i) && per_cpu(cpufreq_cpu_data, i)) {
    ret = 0;
    break;
   }


  if (ret) {
   dprintk("no CPU initialized for driver %s\n",
       driver_data->name);
   sysdev_driver_unregister(&cpu_sysdev_class,
      &cpufreq_sysdev_driver);

   write_lock_irqsave(&cpufreq_driver_lock, flags);
   cpufreq_driver = ((void*)0);
   write_unlock_irqrestore(&cpufreq_driver_lock, flags);
  }
 }

 if (!ret) {
  register_hotcpu_notifier(&cpufreq_cpu_notifier);
  dprintk("driver %s up and running\n", driver_data->name);
  cpufreq_debug_enable_ratelimit();
 }

 return ret;
}
