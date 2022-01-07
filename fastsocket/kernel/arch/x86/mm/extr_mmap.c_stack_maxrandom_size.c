
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int personality; } ;


 int ADDR_NO_RANDOMIZE ;
 unsigned int PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 unsigned int STACK_RND_MASK ;
 TYPE_1__* current ;

__attribute__((used)) static unsigned int stack_maxrandom_size(void)
{
 unsigned int max = 0;
 if ((current->flags & PF_RANDOMIZE) &&
  !(current->personality & ADDR_NO_RANDOMIZE)) {
  max = ((-1U) & STACK_RND_MASK) << PAGE_SHIFT;
 }

 return max;
}
