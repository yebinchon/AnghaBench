
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_irq_info {int irq_slice; int irq_cpuid; size_t irq_irq; int list; int irq_pciioinfo; int irq_nasid; } ;
struct pci_dev {int dummy; } ;
struct irq_desc {int status; } ;
typedef int nasid_t ;


 int IRQ_AFFINITY_SET ;
 int SN_PCIDEV_INFO (struct pci_dev*) ;
 int cpu_physical_id (int) ;
 struct irq_desc* irq_to_desc (size_t) ;
 int list_add_rcu (int *,int ) ;
 int nasid_slice_to_cpuid (int ,int) ;
 int pci_dev_get (struct pci_dev*) ;
 int register_intr_pda (struct sn_irq_info*) ;
 int reserve_irq_vector (size_t) ;
 int set_irq_affinity_info (size_t,int,int ) ;
 int sn_irq_info_lock ;
 int * sn_irq_lh ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void sn_irq_fixup(struct pci_dev *pci_dev, struct sn_irq_info *sn_irq_info)
{
 nasid_t nasid = sn_irq_info->irq_nasid;
 int slice = sn_irq_info->irq_slice;
 int cpu = nasid_slice_to_cpuid(nasid, slice);





 pci_dev_get(pci_dev);
 sn_irq_info->irq_cpuid = cpu;
 sn_irq_info->irq_pciioinfo = SN_PCIDEV_INFO(pci_dev);


 spin_lock(&sn_irq_info_lock);
 list_add_rcu(&sn_irq_info->list, sn_irq_lh[sn_irq_info->irq_irq]);
 reserve_irq_vector(sn_irq_info->irq_irq);
 spin_unlock(&sn_irq_info_lock);

 register_intr_pda(sn_irq_info);
}
