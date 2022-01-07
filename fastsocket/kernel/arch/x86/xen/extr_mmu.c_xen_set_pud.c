
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;


 int ADD_STATS (int ,int) ;
 int pud_update ;
 int pud_update_pinned ;
 int xen_page_pinned (int *) ;
 int xen_set_pud_hyper (int *,int ) ;

void xen_set_pud(pud_t *ptr, pud_t val)
{
 ADD_STATS(pud_update, 1);



 if (!xen_page_pinned(ptr)) {
  *ptr = val;
  return;
 }

 ADD_STATS(pud_update_pinned, 1);

 xen_set_pud_hyper(ptr, val);
}
