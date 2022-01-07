
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef unsigned long phys_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int remap_area_pte (int *,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline int remap_area_pmd(pmd_t * pmd, unsigned long address,
 phys_t size, phys_t phys_addr, unsigned long flags)
{
 phys_t end;

 address &= ~PGDIR_MASK;
 end = address + size;
 if (end > PGDIR_SIZE)
  end = PGDIR_SIZE;
 phys_addr -= address;
 BUG_ON(address >= end);
 do {
  pte_t * pte = pte_alloc_kernel(pmd, address);
  if (!pte)
   return -ENOMEM;
  remap_area_pte(pte, address, end - address, address + phys_addr, flags);
  address = (address + PMD_SIZE) & PMD_MASK;
  pmd++;
 } while (address && (address < end));
 return 0;
}
