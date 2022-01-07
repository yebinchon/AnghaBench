
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* ist; } ;


 int DEBUG_STACK ;
 unsigned long DEBUG_STKSZ ;
 unsigned long EXCEPTION_STKSZ ;
 unsigned int N_EXCEPTION_STACKS ;
 int orig_ist ;
 TYPE_1__ per_cpu (int ,unsigned int) ;
 char** x86_stack_ids ;

__attribute__((used)) static unsigned long *in_exception_stack(unsigned cpu, unsigned long stack,
      unsigned *usedp, char **idp)
{
 unsigned k;





 for (k = 0; k < N_EXCEPTION_STACKS; k++) {
  unsigned long end = per_cpu(orig_ist, cpu).ist[k];




  if (stack >= end)
   continue;




  if (stack >= end - EXCEPTION_STKSZ) {






   if (*usedp & (1U << k))
    break;
   *usedp |= 1U << k;
   *idp = x86_stack_ids[k];
   return (unsigned long *)end;
  }
 }
 return ((void*)0);
}
