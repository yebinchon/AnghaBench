
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long MAP_32BIT ;
 int PF_RANDOMIZE ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 int TIF_IA32 ;
 TYPE_1__* current ;
 unsigned long randomize_range (unsigned long,unsigned long,int ) ;
 int test_thread_flag (int ) ;

__attribute__((used)) static void find_start_end(unsigned long flags, unsigned long *begin,
      unsigned long *end)
{
 if (!test_thread_flag(TIF_IA32) && (flags & MAP_32BIT)) {
  unsigned long new_begin;







  *begin = 0x40000000;
  *end = 0x80000000;
  if (current->flags & PF_RANDOMIZE) {
   new_begin = randomize_range(*begin, *begin + 0x02000000, 0);
   if (new_begin)
    *begin = new_begin;
  }
 } else {
  *begin = TASK_UNMAPPED_BASE;
  *end = TASK_SIZE;
 }
}
