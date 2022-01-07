
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int icache_size; unsigned int icache_line; scalar_t__ use_icache; } ;


 int __disable_icache () ;
 int __enable_icache () ;
 int __invalidate_icache (unsigned int) ;
 TYPE_1__ cpuinfo ;
 int local_irq_restore (unsigned int) ;
 int local_irq_save (unsigned int) ;

void __invalidate_icache_all(void)
{
 unsigned int i;
 unsigned flags;

 if (cpuinfo.use_icache) {
  local_irq_save(flags);
  __disable_icache();



  for (i = 0; i < cpuinfo.icache_size;
   i += cpuinfo.icache_line)
    __invalidate_icache(i);

  __enable_icache();
  local_irq_restore(flags);
 }
}
