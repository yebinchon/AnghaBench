
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_shared_private {int smi_busy_wait; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ ERR_INT_CAUSE ;
 int ERR_INT_SMI_DONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int readl (scalar_t__) ;
 int wake_up (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mv643xx_eth_err_irq(int irq, void *dev_id)
{
 struct mv643xx_eth_shared_private *msp = dev_id;

 if (readl(msp->base + ERR_INT_CAUSE) & ERR_INT_SMI_DONE) {
  writel(~ERR_INT_SMI_DONE, msp->base + ERR_INT_CAUSE);
  wake_up(&msp->smi_busy_wait);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
