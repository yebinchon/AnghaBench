
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_loadavg () ;
 int nr_iowait_cpu (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static inline int performance_multiplier(void)
{
 int mult = 1;



 mult += 2 * get_loadavg();


 mult += 10 * nr_iowait_cpu(smp_processor_id());

 return mult;
}
