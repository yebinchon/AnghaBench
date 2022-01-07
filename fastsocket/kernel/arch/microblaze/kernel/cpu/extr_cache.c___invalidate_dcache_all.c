
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int dcache_size; unsigned int dcache_line; scalar_t__ use_dcache; } ;


 int __disable_dcache () ;
 int __enable_dcache () ;
 int __invalidate_dcache (unsigned int) ;
 TYPE_1__ cpuinfo ;
 int local_irq_restore (unsigned int) ;
 int local_irq_save (unsigned int) ;

void __invalidate_dcache_all(void)
{
 unsigned int i;
 unsigned flags;

 if (cpuinfo.use_dcache) {
  local_irq_save(flags);
  __disable_dcache();





  for (i = 0; i < cpuinfo.dcache_size;
   i += cpuinfo.dcache_line)
    __invalidate_dcache(i);

  __enable_dcache();
  local_irq_restore(flags);
 }
}
