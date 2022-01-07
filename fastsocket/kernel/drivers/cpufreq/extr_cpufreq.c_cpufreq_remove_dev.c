
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {unsigned int id; } ;


 int BUG () ;
 int __cpufreq_remove_dev (struct sys_device*) ;
 scalar_t__ cpu_is_offline (unsigned int) ;
 int lock_policy_rwsem_write (unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int cpufreq_remove_dev(struct sys_device *sys_dev)
{
 unsigned int cpu = sys_dev->id;
 int retval;

 if (cpu_is_offline(cpu))
  return 0;

 if (unlikely(lock_policy_rwsem_write(cpu)))
  BUG();

 retval = __cpufreq_remove_dev(sys_dev);
 return retval;
}
