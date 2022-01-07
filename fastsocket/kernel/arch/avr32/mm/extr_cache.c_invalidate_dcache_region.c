
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
 int invalidate_dcache_line (void*) ;

void invalidate_dcache_region(void *start, size_t size)
{
 unsigned long v, begin, end, linesz, mask;

 linesz = boot_cpu_data.dcache.linesz;
 mask = linesz - 1;




 begin = (unsigned long)start;
 end = begin + size;

 if (begin & mask) {
  flush_dcache_line(start);
  begin += linesz;
 }
 if (end & mask) {
  flush_dcache_line((void *)end);
  end &= ~mask;
 }


 for (v = begin; v < end; v += linesz)
  invalidate_dcache_line((void *)v);
 flush_write_buffer();
}
