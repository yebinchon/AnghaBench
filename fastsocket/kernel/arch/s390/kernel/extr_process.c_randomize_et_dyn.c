
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_ALIGN (scalar_t__) ;
 int PF_RANDOMIZE ;
 scalar_t__ brk_rnd () ;
 TYPE_1__* current ;

unsigned long randomize_et_dyn(unsigned long base)
{
 unsigned long ret = PAGE_ALIGN(base + brk_rnd());

 if (!(current->flags & PF_RANDOMIZE))
  return base;
 if (ret < base)
  return base;
 return ret;
}
