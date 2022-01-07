
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;


 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 int ptep_test_and_clear_young (struct vm_area_struct*,unsigned long,int *) ;

int ptep_clear_flush_young(struct vm_area_struct *vma,
      unsigned long address, pte_t *ptep)
{
 int young;

 young = ptep_test_and_clear_young(vma, address, ptep);
 if (young)
  flush_tlb_page(vma, address);

 return young;
}
