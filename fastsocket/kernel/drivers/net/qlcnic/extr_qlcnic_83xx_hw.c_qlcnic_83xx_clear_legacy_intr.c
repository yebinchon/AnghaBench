
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_hardware_context {scalar_t__ pci_func; } ;
struct TYPE_2__ {int spurious_intr; } ;
struct qlcnic_adapter {int tgt_status_reg; int isr_int_vec; TYPE_1__ stats; struct qlcnic_hardware_context* ahw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ QLC_83XX_INTX_FUNC (int ) ;
 int QLC_83XX_LEGACY_INTX_MAX_RETRY ;
 scalar_t__ QLC_83XX_VALID_INTX_BIT30 (int ) ;
 int QLC_83XX_VALID_INTX_BIT31 (int ) ;
 int readl (int ) ;
 int wmb () ;
 int writel (int ,int ) ;

irqreturn_t qlcnic_83xx_clear_legacy_intr(struct qlcnic_adapter *adapter)
{
 u32 intr_val;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int retries = 0;

 intr_val = readl(adapter->tgt_status_reg);

 if (!QLC_83XX_VALID_INTX_BIT31(intr_val))
  return IRQ_NONE;

 if (QLC_83XX_INTX_FUNC(intr_val) != adapter->ahw->pci_func) {
  adapter->stats.spurious_intr++;
  return IRQ_NONE;
 }

 wmb();


 writel(0, adapter->isr_int_vec);
 intr_val = readl(adapter->isr_int_vec);
 do {
  intr_val = readl(adapter->tgt_status_reg);
  if (QLC_83XX_INTX_FUNC(intr_val) != ahw->pci_func)
   break;
  retries++;
 } while (QLC_83XX_VALID_INTX_BIT30(intr_val) &&
   (retries < QLC_83XX_LEGACY_INTX_MAX_RETRY));

 return IRQ_HANDLED;
}
