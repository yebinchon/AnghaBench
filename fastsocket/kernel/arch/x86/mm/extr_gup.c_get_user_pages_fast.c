
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
typedef int pgd_t ;
struct TYPE_3__ {struct mm_struct* mm; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int VM_BUG_ON (int) ;
 unsigned long __VIRTUAL_MASK_SHIFT ;
 TYPE_1__* current ;
 int down_read (int *) ;
 int get_user_pages (TYPE_1__*,struct mm_struct*,unsigned long,unsigned long,int,int ,struct page**,int *) ;
 int gup_pud_range (int ,unsigned long,unsigned long,int,struct page**,int*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int up_read (int *) ;

int get_user_pages_fast(unsigned long start, int nr_pages, int write,
   struct page **pages)
{
 struct mm_struct *mm = current->mm;
 unsigned long addr, len, end;
 unsigned long next;
 pgd_t *pgdp;
 int nr = 0;

 start &= PAGE_MASK;
 addr = start;
 len = (unsigned long) nr_pages << PAGE_SHIFT;

 end = start + len;
 if (end < start)
  goto slow_irqon;
 local_irq_disable();
 pgdp = pgd_offset(mm, addr);
 do {
  pgd_t pgd = *pgdp;

  next = pgd_addr_end(addr, end);
  if (pgd_none(pgd))
   goto slow;
  if (!gup_pud_range(pgd, addr, next, write, pages, &nr))
   goto slow;
 } while (pgdp++, addr = next, addr != end);
 local_irq_enable();

 VM_BUG_ON(nr != (end - start) >> PAGE_SHIFT);
 return nr;

 {
  int ret;

slow:
  local_irq_enable();
slow_irqon:

  start += nr << PAGE_SHIFT;
  pages += nr;

  down_read(&mm->mmap_sem);
  ret = get_user_pages(current, mm, start,
   (end - start) >> PAGE_SHIFT, write, 0, pages, ((void*)0));
  up_read(&mm->mmap_sem);


  if (nr > 0) {
   if (ret < 0)
    ret = nr;
   else
    ret += nr;
  }

  return ret;
 }
}
