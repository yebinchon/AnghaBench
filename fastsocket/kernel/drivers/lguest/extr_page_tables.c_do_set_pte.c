
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int _PAGE_ACCESSED ;
 int _PAGE_DIRTY ;
 int _PAGE_PRESENT ;
 int __pte (int ) ;
 int check_gpte (struct lg_cpu*,int ) ;
 int gpte_to_spte (struct lg_cpu*,int ,int) ;
 int pgd_flags (int ) ;
 int pmd_flags (int ) ;
 int pte_flags (int ) ;
 int release_pte (int ) ;
 int set_pte (int *,int ) ;
 int * spgd_addr (struct lg_cpu*,int,unsigned long) ;
 int * spmd_addr (struct lg_cpu*,int ,unsigned long) ;
 int * spte_addr (struct lg_cpu*,int ,unsigned long) ;

__attribute__((used)) static void do_set_pte(struct lg_cpu *cpu, int idx,
         unsigned long vaddr, pte_t gpte)
{

 pgd_t *spgd = spgd_addr(cpu, idx, vaddr);





 if (pgd_flags(*spgd) & _PAGE_PRESENT) {





   pte_t *spte = spte_addr(cpu, *spgd, vaddr);
   release_pte(*spte);







   if (pte_flags(gpte) & (_PAGE_DIRTY | _PAGE_ACCESSED)) {
    check_gpte(cpu, gpte);
    set_pte(spte,
     gpte_to_spte(cpu, gpte,
      pte_flags(gpte) & _PAGE_DIRTY));
   } else {




    set_pte(spte, __pte(0));
   }



 }
}
