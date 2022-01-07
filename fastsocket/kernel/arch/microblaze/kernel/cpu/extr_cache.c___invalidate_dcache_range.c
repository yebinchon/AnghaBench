
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dcache_line; scalar_t__ dcache_size; scalar_t__ use_dcache; } ;


 int __disable_dcache () ;
 int __enable_dcache () ;
 int __invalidate_dcache (unsigned int) ;
 TYPE_1__ cpuinfo ;
 int local_irq_restore (unsigned int) ;
 int local_irq_save (unsigned int) ;
 unsigned long min (scalar_t__,unsigned long) ;

void __invalidate_dcache_range(unsigned long start, unsigned long end)
{
 unsigned int i;
 unsigned flags;
 unsigned int align;

 if (cpuinfo.use_dcache) {




  end = min(start + cpuinfo.dcache_size, end);
  align = ~(cpuinfo.dcache_line - 1);
  start &= align;

  end = ((end & align) + cpuinfo.dcache_line);
  local_irq_save(flags);
  __disable_dcache();

  for (i = start; i < end; i += cpuinfo.dcache_line)
   __invalidate_dcache(i);

  __enable_dcache();
  local_irq_restore(flags);
 }
}
