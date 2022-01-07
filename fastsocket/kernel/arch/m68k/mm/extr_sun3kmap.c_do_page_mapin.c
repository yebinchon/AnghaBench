
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int PAGE_KERNEL ;
 unsigned long PAGE_SHIFT ;
 int pfn_pte (unsigned long,int ) ;
 int print_pte_vaddr (unsigned long) ;
 unsigned long pte_val (int ) ;
 int sun3_put_pte (unsigned long,unsigned long) ;

__attribute__((used)) static inline void do_page_mapin(unsigned long phys, unsigned long virt,
     unsigned long type)
{
 unsigned long pte;
 pte_t ptep;

 ptep = pfn_pte(phys >> PAGE_SHIFT, PAGE_KERNEL);
 pte = pte_val(ptep);
 pte |= type;

 sun3_put_pte(virt, pte);





}
