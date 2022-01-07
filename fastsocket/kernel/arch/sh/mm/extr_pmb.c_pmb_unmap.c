
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {unsigned long vpn; struct pmb_entry* next; } ;


 int __pmb_unmap (struct pmb_entry*) ;
 struct pmb_entry* pmb_list ;
 scalar_t__ unlikely (int) ;

void pmb_unmap(unsigned long addr)
{
 struct pmb_entry **p, *pmbe;

 for (p = &pmb_list; (pmbe = *p); p = &pmbe->next)
  if (pmbe->vpn == addr)
   break;

 if (unlikely(!pmbe))
  return;

 __pmb_unmap(pmbe);
}
