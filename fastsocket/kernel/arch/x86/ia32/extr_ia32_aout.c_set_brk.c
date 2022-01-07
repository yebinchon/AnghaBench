
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 TYPE_2__* current ;
 int do_brk (unsigned long,unsigned long) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void set_brk(unsigned long start, unsigned long end)
{
 start = PAGE_ALIGN(start);
 end = PAGE_ALIGN(end);
 if (end <= start)
  return;
 down_write(&current->mm->mmap_sem);
 do_brk(start, end - start);
 up_write(&current->mm->mmap_sem);
}
