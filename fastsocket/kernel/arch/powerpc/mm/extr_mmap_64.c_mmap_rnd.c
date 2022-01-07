
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 TYPE_1__* current ;
 int get_random_int () ;
 scalar_t__ is_32bit_task () ;

__attribute__((used)) static unsigned long mmap_rnd(void)
{
 unsigned long rnd = 0;

 if (current->flags & PF_RANDOMIZE) {

  if (is_32bit_task())
   rnd = (long)(get_random_int() % (1<<(22-PAGE_SHIFT)));
  else
   rnd = (long)(get_random_int() % (1<<(29-PAGE_SHIFT)));
 }
 return (rnd << PAGE_SHIFT) * 2;
}
