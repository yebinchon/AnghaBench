
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int PAGE_SHIFT ;
 int __native_set_fixmap (int,int ) ;
 int pfn_pte (int,int ) ;

void native_set_fixmap(enum fixed_addresses idx, phys_addr_t phys,
         pgprot_t flags)
{
 __native_set_fixmap(idx, pfn_pte(phys >> PAGE_SHIFT, flags));
}
