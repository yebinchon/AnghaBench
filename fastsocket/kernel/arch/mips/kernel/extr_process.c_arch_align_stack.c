
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int personality; } ;


 int ADDR_NO_RANDOMIZE ;
 unsigned long ALMASK ;
 unsigned long PAGE_MASK ;
 TYPE_1__* current ;
 unsigned long get_random_int () ;
 scalar_t__ randomize_va_space ;

unsigned long arch_align_stack(unsigned long sp)
{
 if (!(current->personality & ADDR_NO_RANDOMIZE) && randomize_va_space)
  sp -= get_random_int() & ~PAGE_MASK;

 return sp & ALMASK;
}
