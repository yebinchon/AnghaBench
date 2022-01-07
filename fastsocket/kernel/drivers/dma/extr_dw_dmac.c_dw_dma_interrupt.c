
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int dev; } ;
struct dw_dma {int all_chan_mask; int tasklet; TYPE_1__ dma; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int ERROR; int DST_TRAN; int SRC_TRAN; int BLOCK; int XFER; } ;


 int IRQ_HANDLED ;
 TYPE_2__ MASK ;
 int STATUS_INT ;
 int channel_clear_bit (struct dw_dma*,int ,int) ;
 int dev_err (int ,char*,scalar_t__) ;
 int dev_vdbg (int ,char*,scalar_t__) ;
 scalar_t__ dma_readl (struct dw_dma*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t dw_dma_interrupt(int irq, void *dev_id)
{
 struct dw_dma *dw = dev_id;
 u32 status;

 dev_vdbg(dw->dma.dev, "interrupt: status=0x%x\n",
   dma_readl(dw, STATUS_INT));





 channel_clear_bit(dw, MASK.XFER, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.BLOCK, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.ERROR, dw->all_chan_mask);

 status = dma_readl(dw, STATUS_INT);
 if (status) {
  dev_err(dw->dma.dev,
   "BUG: Unexpected interrupts pending: 0x%x\n",
   status);


  channel_clear_bit(dw, MASK.XFER, (1 << 8) - 1);
  channel_clear_bit(dw, MASK.BLOCK, (1 << 8) - 1);
  channel_clear_bit(dw, MASK.SRC_TRAN, (1 << 8) - 1);
  channel_clear_bit(dw, MASK.DST_TRAN, (1 << 8) - 1);
  channel_clear_bit(dw, MASK.ERROR, (1 << 8) - 1);
 }

 tasklet_schedule(&dw->tasklet);

 return IRQ_HANDLED;
}
