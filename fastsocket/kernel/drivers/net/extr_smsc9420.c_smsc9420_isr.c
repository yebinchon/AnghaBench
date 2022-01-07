
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct smsc9420_pdata {int software_irq_signal; int int_lock; int napi; int dev; int base_addr; } ;
typedef int irqreturn_t ;


 int BUG_ON (int) ;
 int DMAC_INTR_ENA ;
 int DMAC_INTR_ENA_RX_ ;
 int DMAC_STATUS ;
 int DMAC_STS_NIS_ ;
 int DMAC_STS_RX_ ;
 int DMAC_STS_TX_ ;
 int INT_CFG ;
 int INT_CFG_IRQ_EN_ ;
 int INT_CFG_IRQ_INT_ ;
 int INT_CTL ;
 int INT_CTL_SW_INT_EN_ ;
 int INT_STAT ;
 int INT_STAT_DMAC_INT_ ;
 int INT_STAT_SW_INT_ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 int netif_wake_queue (int ) ;
 int smp_wmb () ;
 int smsc9420_pci_flush_write (struct smsc9420_pdata*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t smsc9420_isr(int irq, void *dev_id)
{
 struct smsc9420_pdata *pd = dev_id;
 u32 int_cfg, int_sts, int_ctl;
 irqreturn_t ret = IRQ_NONE;
 ulong flags;

 BUG_ON(!pd);
 BUG_ON(!pd->base_addr);

 int_cfg = smsc9420_reg_read(pd, INT_CFG);


 if ((int_cfg & (INT_CFG_IRQ_EN_ | INT_CFG_IRQ_INT_)) !=
     (INT_CFG_IRQ_EN_ | INT_CFG_IRQ_INT_))
  return IRQ_NONE;

 int_sts = smsc9420_reg_read(pd, INT_STAT);

 if (likely(INT_STAT_DMAC_INT_ & int_sts)) {
  u32 status = smsc9420_reg_read(pd, DMAC_STATUS);
  u32 ints_to_clear = 0;

  if (status & DMAC_STS_TX_) {
   ints_to_clear |= (DMAC_STS_TX_ | DMAC_STS_NIS_);
   netif_wake_queue(pd->dev);
  }

  if (status & DMAC_STS_RX_) {

   u32 dma_intr_ena = smsc9420_reg_read(pd, DMAC_INTR_ENA);
   dma_intr_ena &= (~DMAC_INTR_ENA_RX_);
   smsc9420_reg_write(pd, DMAC_INTR_ENA, dma_intr_ena);
   smsc9420_pci_flush_write(pd);

   ints_to_clear |= (DMAC_STS_RX_ | DMAC_STS_NIS_);
   napi_schedule(&pd->napi);
  }

  if (ints_to_clear)
   smsc9420_reg_write(pd, DMAC_STATUS, ints_to_clear);

  ret = IRQ_HANDLED;
 }

 if (unlikely(INT_STAT_SW_INT_ & int_sts)) {

  spin_lock_irqsave(&pd->int_lock, flags);
  int_ctl = smsc9420_reg_read(pd, INT_CTL);
  int_ctl &= (~INT_CTL_SW_INT_EN_);
  smsc9420_reg_write(pd, INT_CTL, int_ctl);
  spin_unlock_irqrestore(&pd->int_lock, flags);

  smsc9420_reg_write(pd, INT_STAT, INT_STAT_SW_INT_);
  pd->software_irq_signal = 1;
  smp_wmb();

  ret = IRQ_HANDLED;
 }


 smsc9420_pci_flush_write(pd);

 return ret;
}
