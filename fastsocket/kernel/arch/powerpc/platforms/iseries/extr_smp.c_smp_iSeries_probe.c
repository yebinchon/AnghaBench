
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_possible_map ;
 int cpus_weight (int ) ;

__attribute__((used)) static int smp_iSeries_probe(void)
{
 return cpus_weight(cpu_possible_map);
}
