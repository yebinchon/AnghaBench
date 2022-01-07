
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sn_irq_info {int irq_int_bit; scalar_t__ irq_pciioinfo; int irq_xtalkaddr; } ;
struct pcidev_info {TYPE_1__* pdi_host_pcidev_info; } ;
struct pcibus_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ pdi_pcibus_info; } ;


 int pcibr_force_interrupt (struct sn_irq_info*) ;
 int pcireg_intr_addr_addr_set (struct pcibus_info*,int,int ) ;
 int pcireg_intr_enable_bit_clr (struct pcibus_info*,int) ;
 int pcireg_intr_enable_bit_set (struct pcibus_info*,int) ;

void pcibr_target_interrupt(struct sn_irq_info *sn_irq_info)
{
 struct pcidev_info *pcidev_info;
 struct pcibus_info *pcibus_info;
 int bit = sn_irq_info->irq_int_bit;
 u64 xtalk_addr = sn_irq_info->irq_xtalkaddr;

 pcidev_info = (struct pcidev_info *)sn_irq_info->irq_pciioinfo;
 if (pcidev_info) {
  pcibus_info =
      (struct pcibus_info *)pcidev_info->pdi_host_pcidev_info->
      pdi_pcibus_info;


  pcireg_intr_enable_bit_clr(pcibus_info, (1 << bit));


  pcireg_intr_addr_addr_set(pcibus_info, bit, xtalk_addr);


  pcireg_intr_enable_bit_set(pcibus_info, (1 << bit));

  pcibr_force_interrupt(sn_irq_info);
 }
}
