
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct device {int dummy; } ;
struct dca_provider {int node; } ;
struct dca_domain {int dca_providers; } ;


 int DCA_PROVIDER_REMOVE ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 struct dca_domain* dca_find_domain (struct pci_bus*) ;
 int dca_free_domain (struct dca_domain*) ;
 int dca_lock ;
 struct pci_bus* dca_pci_rc_from_dev (struct device*) ;
 int dca_provider_chain ;
 int dca_sysfs_remove_provider (struct dca_provider*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void unregister_dca_provider(struct dca_provider *dca, struct device *dev)
{
 unsigned long flags;
 struct pci_bus *pci_rc;
 struct dca_domain *domain;

 blocking_notifier_call_chain(&dca_provider_chain,
         DCA_PROVIDER_REMOVE, ((void*)0));

 spin_lock_irqsave(&dca_lock, flags);

 list_del(&dca->node);

 pci_rc = dca_pci_rc_from_dev(dev);
 domain = dca_find_domain(pci_rc);
 if (list_empty(&domain->dca_providers))
  dca_free_domain(domain);

 spin_unlock_irqrestore(&dca_lock, flags);

 dca_sysfs_remove_provider(dca);
}
