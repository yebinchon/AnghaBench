
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct b3dfg_dev {int triplets_dropped; int triplet_ready; int cur_dma_frame_idx; int buffer_lock; int buffer_queue; int triplets_dropped_lock; int transmission_enabled; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int B3D_REG_DMA_STS ;
 int B3D_REG_EC220_DMA_STS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int b3dfg_read32 (struct b3dfg_dev*,int ) ;
 int b3dfg_write32 (struct b3dfg_dev*,int ,int) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int handle_cstate_change (struct b3dfg_dev*) ;
 int list_empty (int *) ;
 int setup_next_frame_transfer (struct b3dfg_dev*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int transfer_complete (struct b3dfg_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t b3dfg_intr(int irq, void *dev_id)
{
 struct b3dfg_dev *fgdev = dev_id;
 struct device *dev = &fgdev->pdev->dev;
 u32 sts;
 u8 dropped;
 bool need_ack = 1;
 irqreturn_t res = IRQ_HANDLED;

 sts = b3dfg_read32(fgdev, B3D_REG_DMA_STS);
 if (unlikely(sts == 0)) {
  dev_warn(dev, "ignore interrupt, DMA status is 0\n");
  res = IRQ_NONE;
  goto out;
 }

 if (unlikely(!fgdev->transmission_enabled)) {
  dev_warn(dev, "ignore interrupt, TX disabled\n");
  res = IRQ_HANDLED;
  goto out;
 }


 dropped = (sts >> 8) & 0xff;
 dev_dbg(dev, "intr: DMA_STS=%08x (drop=%d comp=%d next=%d)\n",
  sts, dropped, !!(sts & 0x4), sts & 0x3);
 if (unlikely(dropped > 0)) {
  spin_lock(&fgdev->triplets_dropped_lock);
  fgdev->triplets_dropped += dropped;
  spin_unlock(&fgdev->triplets_dropped_lock);
 }


 if (sts & 0x08) {
  handle_cstate_change(fgdev);
  goto out;
 }

 spin_lock(&fgdev->buffer_lock);
 if (unlikely(list_empty(&fgdev->buffer_queue))) {


  dev_info(dev, "buffer not ready for next transfer\n");
  fgdev->triplet_ready = 1;
  goto out_unlock;
 }


 if (sts & 0x4) {
  u32 dma_status = b3dfg_read32(fgdev, B3D_REG_EC220_DMA_STS);


  if (unlikely(dma_status & 0x1)) {
   dev_err(dev, "EC220 error: %08x\n", dma_status);


   goto out_unlock;
  }


  if (unlikely(fgdev->cur_dma_frame_idx == -1)) {
   dev_err(dev, "completed but no last idx?\n");


   goto out_unlock;
  }

  transfer_complete(fgdev);
 }


 if (sts & 0x3)
  need_ack = setup_next_frame_transfer(fgdev, sts & 0x3);
 else
  fgdev->cur_dma_frame_idx = -1;

out_unlock:
 spin_unlock(&fgdev->buffer_lock);
out:
 if (need_ack) {
  dev_dbg(dev, "acknowledging interrupt\n");
  b3dfg_write32(fgdev, B3D_REG_EC220_DMA_STS, 0x0b);
 }
 return res;
}
