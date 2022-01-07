
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int BUG () ;
 int __end_of_fixed_addresses ;
 unsigned long __fix_to_virt (int) ;
 int fixmaps_set ;
 int set_pte_vaddr (unsigned long,int ) ;

void __native_set_fixmap(enum fixed_addresses idx, pte_t pte)
{
 unsigned long address = __fix_to_virt(idx);

 if (idx >= __end_of_fixed_addresses) {
  BUG();
  return;
 }
 set_pte_vaddr(address, pte);
 fixmaps_set++;
}
