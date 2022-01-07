
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {scalar_t__ entry; struct pmb_entry* link; } ;


 scalar_t__ PMB_NO_ENTRY ;
 int WARN_ON (int) ;
 int clear_pmb_entry (struct pmb_entry*) ;
 int pmb_free (struct pmb_entry*) ;
 int pmb_map ;
 int test_bit (scalar_t__,int *) ;

__attribute__((used)) static void __pmb_unmap(struct pmb_entry *pmbe)
{
 WARN_ON(!test_bit(pmbe->entry, &pmb_map));

 do {
  struct pmb_entry *pmblink = pmbe;

  if (pmbe->entry != PMB_NO_ENTRY)
   clear_pmb_entry(pmbe);

  pmbe = pmblink->link;

  pmb_free(pmblink);
 } while (pmbe);
}
