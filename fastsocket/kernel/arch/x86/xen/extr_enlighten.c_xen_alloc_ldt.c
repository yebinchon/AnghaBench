
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {int dummy; } ;


 unsigned int LDT_ENTRY_SIZE ;
 int PAGE_KERNEL_RO ;
 unsigned int PAGE_SIZE ;
 int set_aliased_prot (struct desc_struct*,int ) ;

__attribute__((used)) static void xen_alloc_ldt(struct desc_struct *ldt, unsigned entries)
{
 const unsigned entries_per_page = PAGE_SIZE / LDT_ENTRY_SIZE;
 int i;

 for(i = 0; i < entries; i += entries_per_page)
  set_aliased_prot(ldt + i, PAGE_KERNEL_RO);
}
