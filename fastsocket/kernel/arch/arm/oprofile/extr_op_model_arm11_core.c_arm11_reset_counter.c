
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ count; } ;



 size_t CPU_COUNTER (int ,unsigned int) ;


 TYPE_1__* counter_config ;
 int smp_processor_id () ;

__attribute__((used)) static void arm11_reset_counter(unsigned int cnt)
{
 u32 val = -(u32)counter_config[CPU_COUNTER(smp_processor_id(), cnt)].count;
 switch (cnt) {
 case 130:
  asm volatile("mcr p15, 0, %0, c15, c12, 1" : : "r" (val));
  break;

 case 129:
  asm volatile("mcr p15, 0, %0, c15, c12, 2" : : "r" (val));
  break;

 case 128:
  asm volatile("mcr p15, 0, %0, c15, c12, 3" : : "r" (val));
  break;
 }
}
