
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef unsigned long phys_t ;
typedef int pgprot_t ;


 int BUG () ;
 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 unsigned long _PAGE_GLOBAL ;
 unsigned long _PAGE_PRESENT ;
 unsigned long __READABLE ;
 unsigned long __WRITEABLE ;
 int __pgprot (unsigned long) ;
 int pfn_pte (unsigned long,int ) ;
 int printk (char*) ;
 int pte_none (int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static inline void remap_area_pte(pte_t * pte, unsigned long address,
 phys_t size, phys_t phys_addr, unsigned long flags)
{
 phys_t end;
 unsigned long pfn;
 pgprot_t pgprot = __pgprot(_PAGE_GLOBAL | _PAGE_PRESENT | __READABLE
                            | __WRITEABLE | flags);

 address &= ~PMD_MASK;
 end = address + size;
 if (end > PMD_SIZE)
  end = PMD_SIZE;
 BUG_ON(address >= end);
 pfn = phys_addr >> PAGE_SHIFT;
 do {
  if (!pte_none(*pte)) {
   printk("remap_area_pte: page already exists\n");
   BUG();
  }
  set_pte(pte, pfn_pte(pfn, pgprot));
  address += PAGE_SIZE;
  pfn++;
  pte++;
 } while (address && (address < end));
}
