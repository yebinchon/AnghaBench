
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_mcbsp {int tx_irq_completion; int io_base; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OMAP_MCBSP_READ (int ,int ) ;
 int OMAP_MCBSP_WRITE (int ,int ,int) ;
 int RSYNC_ERR ;
 int SPCR1 ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static irqreturn_t omap_mcbsp_rx_irq_handler(int irq, void *dev_id)
{
 struct omap_mcbsp *mcbsp_rx = dev_id;
 u16 irqst_spcr1;

 irqst_spcr1 = OMAP_MCBSP_READ(mcbsp_rx->io_base, SPCR1);
 dev_dbg(mcbsp_rx->dev, "RX IRQ callback : 0x%x\n", irqst_spcr1);

 if (irqst_spcr1 & RSYNC_ERR) {
  dev_err(mcbsp_rx->dev, "RX Frame Sync Error! : 0x%x\n",
   irqst_spcr1);

  OMAP_MCBSP_WRITE(mcbsp_rx->io_base, SPCR1,
   irqst_spcr1 & ~(RSYNC_ERR));
 } else {
  complete(&mcbsp_rx->tx_irq_completion);
 }

 return IRQ_HANDLED;
}
