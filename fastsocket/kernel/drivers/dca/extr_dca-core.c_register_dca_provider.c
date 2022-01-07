
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dca_provider {int node; } ;
struct dca_domain {int dca_providers; } ;


 int DCA_PROVIDER_ADD ;
 int ENODEV ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 struct dca_domain* dca_get_domain (struct device*) ;
 int dca_lock ;
 int dca_provider_chain ;
 scalar_t__ dca_providers_blocked ;
 int dca_sysfs_add_provider (struct dca_provider*,struct device*) ;
 int dca_sysfs_remove_provider (struct dca_provider*) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_dca_providers () ;

int register_dca_provider(struct dca_provider *dca, struct device *dev)
{
 int err;
 unsigned long flags;
 struct dca_domain *domain;

 spin_lock_irqsave(&dca_lock, flags);
 if (dca_providers_blocked) {
  spin_unlock_irqrestore(&dca_lock, flags);
  return -ENODEV;
 }
 spin_unlock_irqrestore(&dca_lock, flags);

 err = dca_sysfs_add_provider(dca, dev);
 if (err)
  return err;

 spin_lock_irqsave(&dca_lock, flags);
 domain = dca_get_domain(dev);
 if (!domain) {
  if (dca_providers_blocked) {
   spin_unlock_irqrestore(&dca_lock, flags);
   dca_sysfs_remove_provider(dca);
   unregister_dca_providers();
  } else {
   spin_unlock_irqrestore(&dca_lock, flags);
  }
  return -ENODEV;
 }
 list_add(&dca->node, &domain->dca_providers);
 spin_unlock_irqrestore(&dca_lock, flags);

 blocking_notifier_call_chain(&dca_provider_chain,
         DCA_PROVIDER_ADD, ((void*)0));
 return 0;
}
