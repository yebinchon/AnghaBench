
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 unsigned long PAGE_MASK ;
 scalar_t__ PMD_SIZE ;
 unsigned long PUD_SIZE ;
 unsigned long __PAGE_KERNEL_LARGE_EXEC ;
 int __pmd (unsigned long) ;
 int set_pmd (int ,int ) ;

__attribute__((used)) static void init_level2_page(pmd_t *level2p, unsigned long addr)
{
 unsigned long end_addr;

 addr &= PAGE_MASK;
 end_addr = addr + PUD_SIZE;
 while (addr < end_addr) {
  set_pmd(level2p++, __pmd(addr | __PAGE_KERNEL_LARGE_EXEC));
  addr += PMD_SIZE;
 }
}
