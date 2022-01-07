
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdtscll (unsigned long) ;
 size_t smp_processor_id () ;

__attribute__((used)) static void collect_tscs(void *data)
{
 unsigned long *cpu_tsc = (unsigned long *)data;

 rdtscll(cpu_tsc[smp_processor_id()]);
}
