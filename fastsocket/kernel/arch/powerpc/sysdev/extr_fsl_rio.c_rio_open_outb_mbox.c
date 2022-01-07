
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int* phys_buffer; int phys; void** virt_buffer; void* virt; scalar_t__ tx_slot; void* dev_id; } ;
struct rio_priv {TYPE_2__ msg_tx_ring; int dev; TYPE_1__* msg_regs; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_3__ {int omr; int osr; int osar; int odqepar; int odqdpar; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_RIO_TX (struct rio_mport*) ;
 int RIO_MAX_TX_RING_SIZE ;
 int RIO_MIN_TX_RING_SIZE ;
 int RIO_MSG_BUFFER_SIZE ;
 int RIO_MSG_DESC_SIZE ;
 void* dma_alloc_coherent (int ,int,int*,int ) ;
 int dma_free_coherent (int ,int,void*,int) ;
 int fsl_rio_tx_handler ;
 int get_bitmask_order (int) ;
 int in_be32 (int *) ;
 int is_power_of_2 (int) ;
 int memset (void*,int ,int) ;
 int out_be32 (int *,int) ;
 int request_irq (int ,int ,int ,char*,void*) ;

int rio_open_outb_mbox(struct rio_mport *mport, void *dev_id, int mbox, int entries)
{
 int i, j, rc = 0;
 struct rio_priv *priv = mport->priv;

 if ((entries < RIO_MIN_TX_RING_SIZE) ||
     (entries > RIO_MAX_TX_RING_SIZE) || (!is_power_of_2(entries))) {
  rc = -EINVAL;
  goto out;
 }


 priv->msg_tx_ring.dev_id = dev_id;
 priv->msg_tx_ring.size = entries;

 for (i = 0; i < priv->msg_tx_ring.size; i++) {
  priv->msg_tx_ring.virt_buffer[i] =
   dma_alloc_coherent(priv->dev, RIO_MSG_BUFFER_SIZE,
    &priv->msg_tx_ring.phys_buffer[i], GFP_KERNEL);
  if (!priv->msg_tx_ring.virt_buffer[i]) {
   rc = -ENOMEM;
   for (j = 0; j < priv->msg_tx_ring.size; j++)
    if (priv->msg_tx_ring.virt_buffer[j])
     dma_free_coherent(priv->dev,
       RIO_MSG_BUFFER_SIZE,
       priv->msg_tx_ring.
       virt_buffer[j],
       priv->msg_tx_ring.
       phys_buffer[j]);
   goto out;
  }
 }


 priv->msg_tx_ring.virt = dma_alloc_coherent(priv->dev,
    priv->msg_tx_ring.size * RIO_MSG_DESC_SIZE,
    &priv->msg_tx_ring.phys, GFP_KERNEL);
 if (!priv->msg_tx_ring.virt) {
  rc = -ENOMEM;
  goto out_dma;
 }
 memset(priv->msg_tx_ring.virt, 0,
   priv->msg_tx_ring.size * RIO_MSG_DESC_SIZE);
 priv->msg_tx_ring.tx_slot = 0;


 out_be32(&priv->msg_regs->odqdpar, priv->msg_tx_ring.phys);
 out_be32(&priv->msg_regs->odqepar, priv->msg_tx_ring.phys);


 out_be32(&priv->msg_regs->osar, 0x00000004);


 out_be32(&priv->msg_regs->osr, 0x000000b3);


 rc = request_irq(IRQ_RIO_TX(mport), fsl_rio_tx_handler, 0,
    "msg_tx", (void *)mport);
 if (rc < 0)
  goto out_irq;
 out_be32(&priv->msg_regs->omr, 0x00100220);


 out_be32(&priv->msg_regs->omr,
   in_be32(&priv->msg_regs->omr) |
   ((get_bitmask_order(entries) - 2) << 12));


 out_be32(&priv->msg_regs->omr, in_be32(&priv->msg_regs->omr) | 0x1);

      out:
 return rc;

      out_irq:
 dma_free_coherent(priv->dev,
     priv->msg_tx_ring.size * RIO_MSG_DESC_SIZE,
     priv->msg_tx_ring.virt, priv->msg_tx_ring.phys);

      out_dma:
 for (i = 0; i < priv->msg_tx_ring.size; i++)
  dma_free_coherent(priv->dev, RIO_MSG_BUFFER_SIZE,
      priv->msg_tx_ring.virt_buffer[i],
      priv->msg_tx_ring.phys_buffer[i]);

 return rc;
}
