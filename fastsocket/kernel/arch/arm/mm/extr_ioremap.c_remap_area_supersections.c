
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {unsigned long prot_sect; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PAGE_SHIFT ;
 scalar_t__ PGDIR_SIZE ;
 unsigned long PMD_SECT_SUPER ;
 int SUPERSECTION_SIZE ;
 unsigned long __pfn_to_phys (unsigned long) ;
 int __pmd (unsigned long) ;
 int flush_pmd_entry (int *) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int unmap_area_sections (unsigned long,size_t) ;

__attribute__((used)) static int
remap_area_supersections(unsigned long virt, unsigned long pfn,
    size_t size, const struct mem_type *type)
{
 unsigned long addr = virt, end = virt + size;
 pgd_t *pgd;





 unmap_area_sections(virt, size);

 pgd = pgd_offset_k(virt);
 do {
  unsigned long super_pmd_val, i;

  super_pmd_val = __pfn_to_phys(pfn) | type->prot_sect |
    PMD_SECT_SUPER;
  super_pmd_val |= ((pfn >> (32 - PAGE_SHIFT)) & 0xf) << 20;

  for (i = 0; i < 8; i++) {
   pmd_t *pmd = pmd_offset(pgd, addr);

   pmd[0] = __pmd(super_pmd_val);
   pmd[1] = __pmd(super_pmd_val);
   flush_pmd_entry(pmd);

   addr += PGDIR_SIZE;
   pgd++;
  }

  pfn += SUPERSECTION_SIZE >> PAGE_SHIFT;
 } while (addr < end);

 return 0;
}
