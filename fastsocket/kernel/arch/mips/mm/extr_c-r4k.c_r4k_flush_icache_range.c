
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_icache_range_args {unsigned long start; unsigned long end; } ;


 int instruction_hazard () ;
 int local_r4k_flush_icache_range_ipi ;
 int r4k_on_each_cpu (int ,struct flush_icache_range_args*,int) ;

__attribute__((used)) static void r4k_flush_icache_range(unsigned long start, unsigned long end)
{
 struct flush_icache_range_args args;

 args.start = start;
 args.end = end;

 r4k_on_each_cpu(local_r4k_flush_icache_range_ipi, &args, 1);
 instruction_hazard();
}
