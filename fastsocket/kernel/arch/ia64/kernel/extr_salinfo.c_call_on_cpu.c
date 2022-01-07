
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cpumask_t ;
struct TYPE_3__ {int cpus_allowed; } ;


 int cpumask_of_cpu (int) ;
 TYPE_1__* current ;
 int set_cpus_allowed (TYPE_1__*,int ) ;
 void stub1 (void*) ;

__attribute__((used)) static void
call_on_cpu(int cpu, void (*fn)(void *), void *arg)
{
 cpumask_t save_cpus_allowed = current->cpus_allowed;
 cpumask_t new_cpus_allowed = cpumask_of_cpu(cpu);
 set_cpus_allowed(current, new_cpus_allowed);
 (*fn)(arg);
 set_cpus_allowed(current, save_cpus_allowed);
}
