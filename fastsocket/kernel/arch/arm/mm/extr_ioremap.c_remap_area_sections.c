
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {int prot_sect; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ PGDIR_SIZE ;
 unsigned long SZ_1M ;
 int __pfn_to_phys (unsigned long) ;
 int __pmd (int) ;
 int flush_pmd_entry (int *) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int unmap_area_sections (unsigned long,size_t) ;

__attribute__((used)) static int
remap_area_sections(unsigned long virt, unsigned long pfn,
      size_t size, const struct mem_type *type)
{
 unsigned long addr = virt, end = virt + size;
 pgd_t *pgd;





 unmap_area_sections(virt, size);

 pgd = pgd_offset_k(addr);
 do {
  pmd_t *pmd = pmd_offset(pgd, addr);

  pmd[0] = __pmd(__pfn_to_phys(pfn) | type->prot_sect);
  pfn += SZ_1M >> PAGE_SHIFT;
  pmd[1] = __pmd(__pfn_to_phys(pfn) | type->prot_sect);
  pfn += SZ_1M >> PAGE_SHIFT;
  flush_pmd_entry(pmd);

  addr += PGDIR_SIZE;
  pgd++;
 } while (addr < end);

 return 0;
}
