
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_page_prot; scalar_t__ vm_pgoff; } ;
typedef unsigned long resource_size_t ;
typedef int pgprot_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long _PAGE_CACHE_MASK ;
 int __pgprot (unsigned long) ;
 scalar_t__ is_linear_pfn_mapping (struct vm_area_struct*) ;
 unsigned long lookup_memtype (unsigned long) ;
 int pat_enabled ;
 unsigned long pgprot_val (int ) ;
 int reserve_pfn_range (unsigned long,unsigned long,int *,int ) ;

int track_pfn_vma_new(struct vm_area_struct *vma, pgprot_t *prot,
   unsigned long pfn, unsigned long size)
{
 unsigned long flags;
 resource_size_t paddr;
 unsigned long vma_size = vma->vm_end - vma->vm_start;

 if (is_linear_pfn_mapping(vma)) {

  paddr = (resource_size_t)vma->vm_pgoff << PAGE_SHIFT;
  return reserve_pfn_range(paddr, vma_size, prot, 0);
 }

 if (!pat_enabled)
  return 0;


 flags = lookup_memtype(pfn << PAGE_SHIFT);
 *prot = __pgprot((pgprot_val(vma->vm_page_prot) & (~_PAGE_CACHE_MASK)) |
    flags);

 return 0;
}
