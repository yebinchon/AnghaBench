
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sn_pcibus_provider {int (* force_interrupt ) (struct sn_irq_info*) ;} ;
struct sn_irq_info {size_t irq_bridge_type; size_t irq_irq; } ;
struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 TYPE_1__* irq_desc ;
 struct sn_pcibus_provider** sn_pci_provider ;
 int stub1 (struct sn_irq_info*) ;

__attribute__((used)) static inline void
sn_call_force_intr_provider(struct sn_irq_info *sn_irq_info)
{
 struct sn_pcibus_provider *pci_provider;

 pci_provider = sn_pci_provider[sn_irq_info->irq_bridge_type];


 if (!(irq_desc[sn_irq_info->irq_irq].status & IRQ_DISABLED) &&
     pci_provider && pci_provider->force_interrupt)
  (*pci_provider->force_interrupt)(sn_irq_info);
}
