
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_icache_range_args {unsigned long start; unsigned long end; } ;


 int local_r4k_flush_icache_range (unsigned long,unsigned long) ;

__attribute__((used)) static inline void local_r4k_flush_icache_range_ipi(void *args)
{
 struct flush_icache_range_args *fir_args = args;
 unsigned long start = fir_args->start;
 unsigned long end = fir_args->end;

 local_r4k_flush_icache_range(start, end);
}
