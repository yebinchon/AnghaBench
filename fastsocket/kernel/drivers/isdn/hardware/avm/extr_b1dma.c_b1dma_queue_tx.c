
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_7__ {int csr; int lock; TYPE_1__* dma; } ;
typedef TYPE_2__ avmcard ;
struct TYPE_6__ {int send_queue; } ;


 int AMCC_INTCSR ;
 int EN_TX_TC_INT ;
 int b1dma_dispatch_tx (TYPE_2__*) ;
 int b1dma_writel (TYPE_2__*,int,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void b1dma_queue_tx(avmcard *card, struct sk_buff *skb)
{
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);

 skb_queue_tail(&card->dma->send_queue, skb);

 if (!(card->csr & EN_TX_TC_INT)) {
  b1dma_dispatch_tx(card);
  b1dma_writel(card, card->csr, AMCC_INTCSR);
 }

 spin_unlock_irqrestore(&card->lock, flags);
}
