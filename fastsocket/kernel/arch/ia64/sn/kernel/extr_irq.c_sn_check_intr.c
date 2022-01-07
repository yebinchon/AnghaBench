
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sn_irq_info {scalar_t__ irq_bridge_type; int irq_int_bit; int irq_last_intr; scalar_t__ irq_pciioinfo; } ;
struct pcidev_info {TYPE_1__* pdi_host_pcidev_info; } ;
struct pcibus_info {int dummy; } ;
struct TYPE_4__ {int sn_in_service_ivecs; } ;
struct TYPE_3__ {scalar_t__ pdi_pcibus_info; } ;


 scalar_t__ PCIIO_ASIC_TYPE_PIC ;
 int ia64_get_irr (int ) ;
 int irq_to_vector (int) ;
 int pcireg_intr_status_get (struct pcibus_info*) ;
 TYPE_2__* pda ;
 int sn_call_force_intr_provider (struct sn_irq_info*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void sn_check_intr(int irq, struct sn_irq_info *sn_irq_info)
{
 u64 regval;
 struct pcidev_info *pcidev_info;
 struct pcibus_info *pcibus_info;






 if (sn_irq_info->irq_bridge_type != PCIIO_ASIC_TYPE_PIC)
  return;

 pcidev_info = (struct pcidev_info *)sn_irq_info->irq_pciioinfo;
 if (!pcidev_info)
  return;

 pcibus_info =
     (struct pcibus_info *)pcidev_info->pdi_host_pcidev_info->
     pdi_pcibus_info;
 regval = pcireg_intr_status_get(pcibus_info);

 if (!ia64_get_irr(irq_to_vector(irq))) {
  if (!test_bit(irq, pda->sn_in_service_ivecs)) {
   regval &= 0xff;
   if (sn_irq_info->irq_int_bit & regval &
       sn_irq_info->irq_last_intr) {
    regval &= ~(sn_irq_info->irq_int_bit & regval);
    sn_call_force_intr_provider(sn_irq_info);
   }
  }
 }
 sn_irq_info->irq_last_intr = regval;
}
