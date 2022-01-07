
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int cpu_pgd; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_RW ;
 unsigned long pgd_flags (int ) ;
 unsigned long pmd_flags (int ) ;
 unsigned long pte_flags (int ) ;
 int * spgd_addr (struct lg_cpu*,int ,unsigned long) ;
 int * spmd_addr (struct lg_cpu*,int ,unsigned long) ;
 int * spte_addr (struct lg_cpu*,int ,unsigned long) ;

__attribute__((used)) static bool page_writable(struct lg_cpu *cpu, unsigned long vaddr)
{
 pgd_t *spgd;
 unsigned long flags;





 spgd = spgd_addr(cpu, cpu->cpu_pgd, vaddr);
 if (!(pgd_flags(*spgd) & _PAGE_PRESENT))
  return 0;
 flags = pte_flags(*(spte_addr(cpu, *spgd, vaddr)));

 return (flags & (_PAGE_PRESENT|_PAGE_RW)) == (_PAGE_PRESENT|_PAGE_RW);
}
