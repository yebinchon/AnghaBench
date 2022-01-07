
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {unsigned long vpn; unsigned long ppn; unsigned long flags; } ;


 int ENOMEM ;
 struct pmb_entry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct pmb_entry* kmem_cache_alloc (int ,int ) ;
 int pmb_cache ;
 int pmb_list_add (struct pmb_entry*) ;
 int pmb_list_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct pmb_entry *pmb_alloc(unsigned long vpn, unsigned long ppn,
       unsigned long flags)
{
 struct pmb_entry *pmbe;

 pmbe = kmem_cache_alloc(pmb_cache, GFP_KERNEL);
 if (!pmbe)
  return ERR_PTR(-ENOMEM);

 pmbe->vpn = vpn;
 pmbe->ppn = ppn;
 pmbe->flags = flags;

 spin_lock_irq(&pmb_list_lock);
 pmb_list_add(pmbe);
 spin_unlock_irq(&pmb_list_lock);

 return pmbe;
}
