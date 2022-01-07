
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ dch; int (* release ) (TYPE_2__*) ;} ;
struct fritzcard {int list; int pdev; int addr; TYPE_2__ isac; int * bch; int irq; int lock; } ;


 int AVM_cnt ;
 int ISDN_P_NONE ;
 int card_lock ;
 int disable_hwirq (struct fritzcard*) ;
 int free_irq (int ,struct fritzcard*) ;
 int kfree (struct fritzcard*) ;
 int list_del (int *) ;
 int mISDN_freebchannel (int *) ;
 int mISDN_unregister_device (int *) ;
 int modehdlc (int *,int ) ;
 int pci_disable_device (int ) ;
 int pci_set_drvdata (int ,int *) ;
 int release_region (int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (TYPE_2__*) ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
release_card(struct fritzcard *card)
{
 u_long flags;

 disable_hwirq(card);
 spin_lock_irqsave(&card->lock, flags);
 modehdlc(&card->bch[0], ISDN_P_NONE);
 modehdlc(&card->bch[1], ISDN_P_NONE);
 spin_unlock_irqrestore(&card->lock, flags);
 card->isac.release(&card->isac);
 free_irq(card->irq, card);
 mISDN_freebchannel(&card->bch[1]);
 mISDN_freebchannel(&card->bch[0]);
 mISDN_unregister_device(&card->isac.dch.dev);
 release_region(card->addr, 32);
 pci_disable_device(card->pdev);
 pci_set_drvdata(card->pdev, ((void*)0));
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 kfree(card);
 AVM_cnt--;
}
