
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_6__ {int capi_ctrl; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_7__ {int port; int irq; } ;
typedef TYPE_2__ avmcard ;


 int AVMB1_PORTLEN ;
 int b1_free_card (TYPE_2__*) ;
 int b1_reset (int ) ;
 int detach_capi_ctr (int *) ;
 int free_irq (int ,TYPE_2__*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int ) ;
 int t1_disable_irq (int ) ;
 int t1_reset (int ) ;

__attribute__((used)) static void t1isa_remove(struct pci_dev *pdev)
{
 avmctrl_info *cinfo = pci_get_drvdata(pdev);
 avmcard *card;

 if (!cinfo)
  return;

 card = cinfo->card;

 t1_disable_irq(card->port);
 b1_reset(card->port);
 b1_reset(card->port);
 t1_reset(card->port);

 detach_capi_ctr(&cinfo->capi_ctrl);
 free_irq(card->irq, card);
 release_region(card->port, AVMB1_PORTLEN);
 b1_free_card(card);
}
