
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long linesz; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 int __flush_icache_range (unsigned long,unsigned long) ;
 TYPE_2__ boot_cpu_data ;

void flush_icache_range(unsigned long start, unsigned long end)
{
 unsigned long linesz;

 linesz = boot_cpu_data.dcache.linesz;
 __flush_icache_range(start & ~(linesz - 1),
        (end + linesz - 1) & ~(linesz - 1));
}
