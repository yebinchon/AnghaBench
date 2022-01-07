
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {int * function; } ;
struct TYPE_5__ {int dev; int l1; TYPE_3__ timer; } ;
struct TYPE_4__ {scalar_t__ protocol; scalar_t__ int_m2; } ;
struct hfc_pci {int pdev; TYPE_2__ dch; int * bch; int irq; scalar_t__ initdone; TYPE_1__ hw; int lock; } ;


 int CLOSE_CHANNEL ;
 int ISDN_P_NONE ;
 scalar_t__ ISDN_P_TE_S0 ;
 int del_timer (TYPE_3__*) ;
 int disable_hwirq (struct hfc_pci*) ;
 int free_irq (int ,struct hfc_pci*) ;
 int kfree (struct hfc_pci*) ;
 int l1_event (int ,int ) ;
 int mISDN_freebchannel (int *) ;
 int mISDN_freedchannel (TYPE_2__*) ;
 int mISDN_unregister_device (int *) ;
 int mode_hfcpci (int *,int,int ) ;
 int pci_set_drvdata (int ,int *) ;
 int release_io_hfcpci (struct hfc_pci*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
release_card(struct hfc_pci *hc) {
 u_long flags;

 spin_lock_irqsave(&hc->lock, flags);
 hc->hw.int_m2 = 0;
 disable_hwirq(hc);
 mode_hfcpci(&hc->bch[0], 1, ISDN_P_NONE);
 mode_hfcpci(&hc->bch[1], 2, ISDN_P_NONE);
 if (hc->dch.timer.function != ((void*)0)) {
  del_timer(&hc->dch.timer);
  hc->dch.timer.function = ((void*)0);
 }
 spin_unlock_irqrestore(&hc->lock, flags);
 if (hc->hw.protocol == ISDN_P_TE_S0)
  l1_event(hc->dch.l1, CLOSE_CHANNEL);
 if (hc->initdone)
  free_irq(hc->irq, hc);
 release_io_hfcpci(hc);
 mISDN_unregister_device(&hc->dch.dev);
 mISDN_freebchannel(&hc->bch[1]);
 mISDN_freebchannel(&hc->bch[0]);
 mISDN_freedchannel(&hc->dch);
 pci_set_drvdata(hc->pdev, ((void*)0));
 kfree(hc);
}
