
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long linesz; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 TYPE_2__ boot_cpu_data ;
 int clean_dcache_line (void*) ;
 int flush_write_buffer () ;
 int invalidate_icache_line (void*) ;

__attribute__((used)) static inline void __flush_icache_range(unsigned long start, unsigned long end)
{
 unsigned long v, linesz;

 linesz = boot_cpu_data.dcache.linesz;
 for (v = start; v < end; v += linesz) {
  clean_dcache_line((void *)v);
  invalidate_icache_line((void *)v);
 }

 flush_write_buffer();
}
