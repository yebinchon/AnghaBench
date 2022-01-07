
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int icache_line; scalar_t__ icache_size; scalar_t__ use_icache; } ;


 int __disable_icache () ;
 int __enable_icache () ;
 int __invalidate_icache (unsigned int) ;
 TYPE_1__ cpuinfo ;
 int local_irq_restore (unsigned int) ;
 int local_irq_save (unsigned int) ;
 unsigned long min (scalar_t__,unsigned long) ;

void __invalidate_icache_range(unsigned long start, unsigned long end)
{
 unsigned int i;
 unsigned flags;
 unsigned int align;

 if (cpuinfo.use_icache) {




  end = min(start + cpuinfo.icache_size, end);
  align = ~(cpuinfo.icache_line - 1);
  start &= align;

  end = ((end & align) + cpuinfo.icache_line);

  local_irq_save(flags);
  __disable_icache();

  for (i = start; i < end; i += cpuinfo.icache_line)
   __invalidate_icache(i);

  __enable_icache();
  local_irq_restore(flags);
 }
}
