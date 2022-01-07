
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int vpe_shift () ;

__attribute__((used)) static inline unsigned int counters_per_cpu_to_total(unsigned int counters)
{
 return counters << vpe_shift();
}
