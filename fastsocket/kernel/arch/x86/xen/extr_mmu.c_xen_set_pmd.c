
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int ADD_STATS (int ,int) ;
 int pmd_update ;
 int pmd_update_pinned ;
 int xen_page_pinned (int *) ;
 int xen_set_pmd_hyper (int *,int ) ;

void xen_set_pmd(pmd_t *ptr, pmd_t val)
{
 ADD_STATS(pmd_update, 1);



 if (!xen_page_pinned(ptr)) {
  *ptr = val;
  return;
 }

 ADD_STATS(pmd_update_pinned, 1);

 xen_set_pmd_hyper(ptr, val);
}
