
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 TYPE_1__* current ;
 int get_random_int () ;
 scalar_t__ mmap_is_ia32 () ;

__attribute__((used)) static unsigned long mmap_rnd(void)
{
 unsigned long rnd = 0;





 if (current->flags & PF_RANDOMIZE) {
  if (mmap_is_ia32())
   rnd = get_random_int() % (1<<8);
  else
   rnd = get_random_int() % (1<<28);
 }
 return rnd << PAGE_SHIFT;
}
