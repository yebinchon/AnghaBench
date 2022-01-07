
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

__attribute__((used)) static unsigned long mmap_rnd(void)
{
 if (!(current->flags & PF_RANDOMIZE))
  return 0;

 return (get_random_int() & 0x7ffUL) << PAGE_SHIFT;
}
