
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef unsigned long phys_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 int flush_cache_all () ;
 int flush_tlb_all () ;
 int init_mm ;
 int * pgd_offset (int *,unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 int * pud_alloc (int *,int *,unsigned long) ;
 scalar_t__ remap_area_pmd (int *,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int remap_area_pages(unsigned long address, phys_t phys_addr,
 phys_t size, unsigned long flags)
{
 int error;
 pgd_t * dir;
 unsigned long end = address + size;

 phys_addr -= address;
 dir = pgd_offset(&init_mm, address);
 flush_cache_all();
 BUG_ON(address >= end);
 do {
  pud_t *pud;
  pmd_t *pmd;

  error = -ENOMEM;
  pud = pud_alloc(&init_mm, dir, address);
  if (!pud)
   break;
  pmd = pmd_alloc(&init_mm, pud, address);
  if (!pmd)
   break;
  if (remap_area_pmd(pmd, address, end - address,
      phys_addr + address, flags))
   break;
  error = 0;
  address = (address + PGDIR_SIZE) & PGDIR_MASK;
  dir++;
 } while (address && (address < end));
 flush_tlb_all();
 return error;
}
