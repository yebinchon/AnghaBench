
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_mm; } ;


 unsigned int get_slice_psize (int ,int ) ;
 unsigned long mmu_psize_to_shift (unsigned int) ;

unsigned long vma_mmu_pagesize(struct vm_area_struct *vma)
{
 unsigned int psize = get_slice_psize(vma->vm_mm, vma->vm_start);

 return 1UL << mmu_psize_to_shift(psize);
}
