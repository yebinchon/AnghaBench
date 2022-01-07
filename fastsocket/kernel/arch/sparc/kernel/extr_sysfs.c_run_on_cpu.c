
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cpumask_t ;
struct TYPE_3__ {int cpus_allowed; } ;


 int cpumask_of_cpu (unsigned long) ;
 TYPE_1__* current ;
 int set_cpus_allowed (TYPE_1__*,int ) ;

__attribute__((used)) static unsigned long run_on_cpu(unsigned long cpu,
           unsigned long (*func)(unsigned long),
    unsigned long arg)
{
 cpumask_t old_affinity = current->cpus_allowed;
 unsigned long ret;


 if (set_cpus_allowed(current, cpumask_of_cpu(cpu)))
  return 0;

 ret = func(arg);

 set_cpus_allowed(current, old_affinity);

 return ret;
}
