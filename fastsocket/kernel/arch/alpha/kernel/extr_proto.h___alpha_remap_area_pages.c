
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 unsigned long _PAGE_ASM ;
 unsigned long _PAGE_KRE ;
 unsigned long _PAGE_KWE ;
 unsigned long _PAGE_VALID ;
 int __pgprot (unsigned long) ;
 int ioremap_page_range (unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static inline int
__alpha_remap_area_pages(unsigned long address, unsigned long phys_addr,
    unsigned long size, unsigned long flags)
{
 pgprot_t prot;

 prot = __pgprot(_PAGE_VALID | _PAGE_ASM | _PAGE_KRE
   | _PAGE_KWE | flags);
 return ioremap_page_range(address, address + size, phys_addr, prot);
}
