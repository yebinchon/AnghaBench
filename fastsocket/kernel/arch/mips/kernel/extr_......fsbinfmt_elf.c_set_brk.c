
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long start_brk; unsigned long brk; int mmap_sem; } ;


 scalar_t__ BAD_ADDR (unsigned long) ;
 unsigned long ELF_PAGEALIGN (unsigned long) ;
 TYPE_2__* current ;
 unsigned long do_brk (unsigned long,unsigned long) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int set_brk(unsigned long start, unsigned long end)
{
 start = ELF_PAGEALIGN(start);
 end = ELF_PAGEALIGN(end);
 if (end > start) {
  unsigned long addr;
  down_write(&current->mm->mmap_sem);
  addr = do_brk(start, end - start);
  up_write(&current->mm->mmap_sem);
  if (BAD_ADDR(addr))
   return addr;
 }
 current->mm->start_brk = current->mm->brk = end;
 return 0;
}
