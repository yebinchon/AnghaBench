
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long linesz; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 TYPE_2__ boot_cpu_data ;
 int flush_dcache_line (void*) ;
 int flush_write_buffer () ;

void flush_dcache_region(void *start, size_t size)
{
 unsigned long v, begin, end, linesz;

 linesz = boot_cpu_data.dcache.linesz;
 begin = (unsigned long)start & ~(linesz - 1);
 end = ((unsigned long)start + size + linesz - 1) & ~(linesz - 1);

 for (v = begin; v < end; v += linesz)
  flush_dcache_line((void *)v);
 flush_write_buffer();
}
