
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int BUG () ;
 int __end_of_fixed_addresses ;
 unsigned long __fix_to_virt (int) ;
 int fixmaps ;
 int map_page (unsigned long,int ,int ) ;
 int pgprot_val (int ) ;

void __set_fixmap (enum fixed_addresses idx, phys_addr_t phys, pgprot_t flags)
{
 unsigned long address = __fix_to_virt(idx);

 if (idx >= __end_of_fixed_addresses) {
  BUG();
  return;
 }

 map_page(address, phys, pgprot_val(flags));
 fixmaps++;
}
