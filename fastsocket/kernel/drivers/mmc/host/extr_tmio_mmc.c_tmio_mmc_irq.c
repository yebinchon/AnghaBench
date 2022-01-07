
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int mmc; } ;
typedef int irqreturn_t ;


 int CTL_IRQ_MASK ;
 int CTL_STATUS ;
 int IRQ_HANDLED ;
 unsigned int TMIO_MASK_CMD ;
 unsigned int TMIO_MASK_IRQ ;
 unsigned int TMIO_STAT_CARD_INSERT ;
 unsigned int TMIO_STAT_CARD_REMOVE ;
 unsigned int TMIO_STAT_DATAEND ;
 unsigned int TMIO_STAT_RXRDY ;
 unsigned int TMIO_STAT_TXRQ ;
 int ack_mmc_irqs (struct tmio_mmc_host*,unsigned int) ;
 int disable_mmc_irqs (struct tmio_mmc_host*,unsigned int) ;
 int mmc_detect_change (int ,int ) ;
 int pr_debug (char*,...) ;
 int pr_debug_status (unsigned int) ;
 unsigned int sd_ctrl_read32 (struct tmio_mmc_host*,int ) ;
 int tmio_mmc_cmd_irq (struct tmio_mmc_host*,unsigned int) ;
 int tmio_mmc_data_irq (struct tmio_mmc_host*) ;
 int tmio_mmc_pio_irq (struct tmio_mmc_host*) ;

__attribute__((used)) static irqreturn_t tmio_mmc_irq(int irq, void *devid)
{
 struct tmio_mmc_host *host = devid;
 unsigned int ireg, irq_mask, status;

 pr_debug("MMC IRQ begin\n");

 status = sd_ctrl_read32(host, CTL_STATUS);
 irq_mask = sd_ctrl_read32(host, CTL_IRQ_MASK);
 ireg = status & TMIO_MASK_IRQ & ~irq_mask;

 pr_debug_status(status);
 pr_debug_status(ireg);

 if (!ireg) {
  disable_mmc_irqs(host, status & ~irq_mask);

  pr_debug("tmio_mmc: Spurious irq, disabling! "
   "0x%08x 0x%08x 0x%08x\n", status, irq_mask, ireg);
  pr_debug_status(status);

  goto out;
 }

 while (ireg) {

  if (ireg & (TMIO_STAT_CARD_INSERT | TMIO_STAT_CARD_REMOVE)) {
   ack_mmc_irqs(host, TMIO_STAT_CARD_INSERT |
    TMIO_STAT_CARD_REMOVE);
   mmc_detect_change(host->mmc, 0);
  }







  if (ireg & TMIO_MASK_CMD) {
   ack_mmc_irqs(host, TMIO_MASK_CMD);
   tmio_mmc_cmd_irq(host, status);
  }


  if (ireg & (TMIO_STAT_RXRDY | TMIO_STAT_TXRQ)) {
   ack_mmc_irqs(host, TMIO_STAT_RXRDY | TMIO_STAT_TXRQ);
   tmio_mmc_pio_irq(host);
  }


  if (ireg & TMIO_STAT_DATAEND) {
   ack_mmc_irqs(host, TMIO_STAT_DATAEND);
   tmio_mmc_data_irq(host);
  }


  status = sd_ctrl_read32(host, CTL_STATUS);
  irq_mask = sd_ctrl_read32(host, CTL_IRQ_MASK);
  ireg = status & TMIO_MASK_IRQ & ~irq_mask;

  pr_debug("Status at end of loop: %08x\n", status);
  pr_debug_status(status);
 }
 pr_debug("MMC IRQ end\n");

out:
 return IRQ_HANDLED;
}
