
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {int dummy; } ;


 int kmem_cache_free (int ,struct pmb_entry*) ;
 int pmb_cache ;
 int pmb_list_del (struct pmb_entry*) ;
 int pmb_list_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pmb_free(struct pmb_entry *pmbe)
{
 spin_lock_irq(&pmb_list_lock);
 pmb_list_del(pmbe);
 spin_unlock_irq(&pmb_list_lock);

 kmem_cache_free(pmb_cache, pmbe);
}
