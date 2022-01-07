
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int dummy; } ;
typedef int pte_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 int _PAGE_PRESENT ;
 int pgd_flags (int ) ;
 unsigned long pgd_pfn (int ) ;
 int pte_index (unsigned long) ;

__attribute__((used)) static unsigned long gpte_addr(struct lg_cpu *cpu,
    pgd_t gpgd, unsigned long vaddr)
{
 unsigned long gpage = pgd_pfn(gpgd) << PAGE_SHIFT;

 BUG_ON(!(pgd_flags(gpgd) & _PAGE_PRESENT));
 return gpage + pte_index(vaddr) * sizeof(pte_t);
}
