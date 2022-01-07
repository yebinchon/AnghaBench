
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; } ;
typedef int resource_size_t ;


 int PAGE_SHIFT ;
 int free_pfn_range (int,unsigned long) ;
 scalar_t__ is_linear_pfn_mapping (struct vm_area_struct*) ;

void untrack_pfn_vma(struct vm_area_struct *vma, unsigned long pfn,
   unsigned long size)
{
 resource_size_t paddr;
 unsigned long vma_size = vma->vm_end - vma->vm_start;

 if (is_linear_pfn_mapping(vma)) {

  paddr = (resource_size_t)vma->vm_pgoff << PAGE_SHIFT;
  free_pfn_range(paddr, vma_size);
  return;
 }
}
