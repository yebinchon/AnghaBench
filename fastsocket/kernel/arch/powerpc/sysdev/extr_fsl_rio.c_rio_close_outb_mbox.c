
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int phys; int virt; } ;
struct rio_priv {TYPE_2__ msg_tx_ring; int dev; TYPE_1__* msg_regs; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_3__ {int omr; } ;


 int IRQ_RIO_TX (struct rio_mport*) ;
 int RIO_MSG_DESC_SIZE ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_irq (int ,void*) ;
 int out_be32 (int *,int ) ;

void rio_close_outb_mbox(struct rio_mport *mport, int mbox)
{
 struct rio_priv *priv = mport->priv;

 out_be32(&priv->msg_regs->omr, 0);


 dma_free_coherent(priv->dev,
     priv->msg_tx_ring.size * RIO_MSG_DESC_SIZE,
     priv->msg_tx_ring.virt, priv->msg_tx_ring.phys);


 free_irq(IRQ_RIO_TX(mport), (void *)mport);
}
