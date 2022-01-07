
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long PAGE_MASK ;
 int kmemcheck_write_strict (struct pt_regs*,unsigned long,unsigned long) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void kmemcheck_write(struct pt_regs *regs,
 unsigned long addr, unsigned int size)
{
 unsigned long page = addr & PAGE_MASK;
 unsigned long next_addr = addr + size - 1;
 unsigned long next_page = next_addr & PAGE_MASK;

 if (likely(page == next_page)) {
  kmemcheck_write_strict(regs, addr, size);
  return;
 }


 kmemcheck_write_strict(regs, addr, next_page - addr);
 kmemcheck_write_strict(regs, next_page, next_addr - next_page);
}
