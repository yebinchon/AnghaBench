
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
 int SPCR2 ;
 int XSYNC_ERR ;
 int complete (int *) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static irqreturn_t omap_mcbsp_tx_irq_handler(int irq, void *dev_id)
{
 struct omap_mcbsp *mcbsp_tx = dev_id;
 u16 irqst_spcr2;

 irqst_spcr2 = OMAP_MCBSP_READ(mcbsp_tx->io_base, SPCR2);
 dev_dbg(mcbsp_tx->dev, "TX IRQ callback : 0x%x\n", irqst_spcr2);

 if (irqst_spcr2 & XSYNC_ERR) {
  dev_err(mcbsp_tx->dev, "TX Frame Sync Error! : 0x%x\n",
   irqst_spcr2);

  OMAP_MCBSP_WRITE(mcbsp_tx->io_base, SPCR2,
   irqst_spcr2 & ~(XSYNC_ERR));
 } else {
  complete(&mcbsp_tx->tx_irq_completion);
 }

 return IRQ_HANDLED;
}
