
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sn_irq_info {size_t irq_irq; int rcu; int list; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct sn_irq_info* pdi_sn_irq_info; } ;


 int SN_PCIDEV_BUSSOFT (struct pci_dev*) ;
 TYPE_1__* SN_PCIDEV_INFO (struct pci_dev*) ;
 int call_rcu (int *,int ) ;
 int free_irq_vector (size_t) ;
 int kfree (struct sn_irq_info*) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 int sn_irq_info_free ;
 int sn_irq_info_lock ;
 int * sn_irq_lh ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unregister_intr_pda (struct sn_irq_info*) ;

void sn_irq_unfixup(struct pci_dev *pci_dev)
{
 struct sn_irq_info *sn_irq_info;


 if (!SN_PCIDEV_BUSSOFT(pci_dev))
  return;

 sn_irq_info = SN_PCIDEV_INFO(pci_dev)->pdi_sn_irq_info;
 if (!sn_irq_info)
  return;
 if (!sn_irq_info->irq_irq) {
  kfree(sn_irq_info);
  return;
 }

 unregister_intr_pda(sn_irq_info);
 spin_lock(&sn_irq_info_lock);
 list_del_rcu(&sn_irq_info->list);
 spin_unlock(&sn_irq_info_lock);
 if (list_empty(sn_irq_lh[sn_irq_info->irq_irq]))
  free_irq_vector(sn_irq_info->irq_irq);
 call_rcu(&sn_irq_info->rcu, sn_irq_info_free);
 pci_dev_put(pci_dev);

}
