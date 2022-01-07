
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 int pte_same (int ,int ) ;
 int pte_update_defer (int ,unsigned long,int *) ;

int ptep_set_access_flags(struct vm_area_struct *vma,
     unsigned long address, pte_t *ptep,
     pte_t entry, int dirty)
{
 int changed = !pte_same(*ptep, entry);

 if (changed && dirty) {
  *ptep = entry;
  pte_update_defer(vma->vm_mm, address, ptep);
  flush_tlb_page(vma, address);
 }

 return changed;
}
