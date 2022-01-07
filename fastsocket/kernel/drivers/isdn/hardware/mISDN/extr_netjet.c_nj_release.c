
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {scalar_t__ class; } ;
struct TYPE_10__ {TYPE_1__ dev; } ;
struct TYPE_7__ {TYPE_5__ dev; } ;
struct TYPE_8__ {TYPE_2__ dch; int (* release ) (TYPE_3__*) ;} ;
struct tiger_hw {scalar_t__ irq; int pdev; int list; int dma; scalar_t__ dma_p; TYPE_4__* bc; TYPE_3__ isac; scalar_t__ base_s; int base; int lock; } ;
struct TYPE_9__ {struct tiger_hw* hrbuf; struct tiger_hw* hsbuf; int bch; } ;


 int ISDN_P_NONE ;
 int NJ_DMA_SIZE ;
 int card_lock ;
 int free_irq (scalar_t__,struct tiger_hw*) ;
 int kfree (struct tiger_hw*) ;
 int list_del (int *) ;
 int mISDN_freebchannel (int *) ;
 int mISDN_unregister_device (TYPE_5__*) ;
 int mode_tiger (TYPE_4__*,int ) ;
 int nj_disable_hwirq (struct tiger_hw*) ;
 int pci_clear_master (int ) ;
 int pci_disable_device (int ) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;
 int pci_set_drvdata (int ,int *) ;
 int release_region (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_3__*) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
nj_release(struct tiger_hw *card)
{
 u_long flags;
 int i;

 if (card->base_s) {
  spin_lock_irqsave(&card->lock, flags);
  nj_disable_hwirq(card);
  mode_tiger(&card->bc[0], ISDN_P_NONE);
  mode_tiger(&card->bc[1], ISDN_P_NONE);
  card->isac.release(&card->isac);
  spin_unlock_irqrestore(&card->lock, flags);
  release_region(card->base, card->base_s);
  card->base_s = 0;
 }
 if (card->irq > 0)
  free_irq(card->irq, card);
 if (card->isac.dch.dev.dev.class)
  mISDN_unregister_device(&card->isac.dch.dev);

 for (i = 0; i < 2; i++) {
  mISDN_freebchannel(&card->bc[i].bch);
  kfree(card->bc[i].hsbuf);
  kfree(card->bc[i].hrbuf);
 }
 if (card->dma_p)
  pci_free_consistent(card->pdev, NJ_DMA_SIZE,
   card->dma_p, card->dma);
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 pci_clear_master(card->pdev);
 pci_disable_device(card->pdev);
 pci_set_drvdata(card->pdev, ((void*)0));
 kfree(card);
}
