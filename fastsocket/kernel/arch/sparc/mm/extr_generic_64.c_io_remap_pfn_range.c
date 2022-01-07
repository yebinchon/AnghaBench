
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int GET_IOSPACE (unsigned long) ;
 unsigned long GET_PFN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 int VM_IO ;
 int VM_PFNMAP ;
 int VM_RESERVED ;
 int flush_cache_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int io_remap_pud_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ,int) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

int io_remap_pfn_range(struct vm_area_struct *vma, unsigned long from,
  unsigned long pfn, unsigned long size, pgprot_t prot)
{
 int error = 0;
 pgd_t * dir;
 unsigned long beg = from;
 unsigned long end = from + size;
 struct mm_struct *mm = vma->vm_mm;
 int space = GET_IOSPACE(pfn);
 unsigned long offset = GET_PFN(pfn) << PAGE_SHIFT;
 unsigned long phys_base;

 phys_base = offset | (((unsigned long) space) << 32UL);


 vma->vm_flags |= VM_IO | VM_RESERVED | VM_PFNMAP;
 vma->vm_pgoff = phys_base >> PAGE_SHIFT;

 offset -= from;
 dir = pgd_offset(mm, from);
 flush_cache_range(vma, beg, end);

 while (from < end) {
  pud_t *pud = pud_alloc(mm, dir, from);
  error = -ENOMEM;
  if (!pud)
   break;
  error = io_remap_pud_range(mm, pud, from, end - from, offset + from, prot, space);
  if (error)
   break;
  from = (from + PGDIR_SIZE) & PGDIR_MASK;
  dir++;
 }

 flush_tlb_range(vma, beg, end);
 return error;
}
