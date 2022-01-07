
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;
typedef int pgprot_t ;


 int O_SYNC ;
 unsigned long PAGE_SHIFT ;
 int X86_FEATURE_CENTAUR_MCR ;
 int X86_FEATURE_CYRIX_ARR ;
 int X86_FEATURE_K6_MTRR ;
 int X86_FEATURE_MTRR ;
 unsigned long _PAGE_CACHE_MASK ;
 unsigned long _PAGE_CACHE_UC ;
 unsigned long _PAGE_CACHE_UC_MINUS ;
 unsigned long _PAGE_CACHE_WB ;
 unsigned long __pa (int ) ;
 int __pgprot (unsigned long) ;
 scalar_t__ boot_cpu_has (int ) ;
 int high_memory ;
 int pat_enabled ;
 unsigned long pgprot_val (int ) ;
 int range_is_allowed (unsigned long,unsigned long) ;

int phys_mem_access_prot_allowed(struct file *file, unsigned long pfn,
    unsigned long size, pgprot_t *vma_prot)
{
 unsigned long flags = _PAGE_CACHE_WB;

 if (!range_is_allowed(pfn, size))
  return 0;

 if (file->f_flags & O_SYNC) {
  flags = _PAGE_CACHE_UC_MINUS;
 }
 *vma_prot = __pgprot((pgprot_val(*vma_prot) & ~_PAGE_CACHE_MASK) |
        flags);
 return 1;
}
