
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cpumask_t ;
struct TYPE_3__ {int cpus_allowed; } ;


 int cpu_online (unsigned int) ;
 int cpumask_of_cpu (unsigned int) ;
 TYPE_1__* current ;
 unsigned int get_current_freq (unsigned int,unsigned long) ;
 unsigned long read_safari_cfg () ;
 int set_cpus_allowed (TYPE_1__*,int ) ;

__attribute__((used)) static unsigned int us3_freq_get(unsigned int cpu)
{
 cpumask_t cpus_allowed;
 unsigned long reg;
 unsigned int ret;

 if (!cpu_online(cpu))
  return 0;

 cpus_allowed = current->cpus_allowed;
 set_cpus_allowed(current, cpumask_of_cpu(cpu));

 reg = read_safari_cfg();
 ret = get_current_freq(cpu, reg);

 set_cpus_allowed(current, cpus_allowed);

 return ret;
}
