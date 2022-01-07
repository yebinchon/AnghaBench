
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_11__ {int n_ports; int status_address; TYPE_6__* status; scalar_t__ plx; scalar_t__* rx_skbs; int pdev; scalar_t__ irq; TYPE_1__* ports; } ;
typedef TYPE_3__ card_t ;
typedef int card_status_t ;
struct TYPE_12__ {TYPE_2__* rx_descs; } ;
struct TYPE_10__ {int address; } ;
struct TYPE_9__ {int dev; } ;


 int BUFFER_LENGTH ;
 int PCI_DMA_FROMDEVICE ;
 int RX_QUEUE_LENGTH ;
 int dev_kfree_skb (scalar_t__) ;
 int free_irq (scalar_t__,TYPE_3__*) ;
 int free_netdev (int ) ;
 int iounmap (scalar_t__) ;
 int kfree (TYPE_3__*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,TYPE_6__*,int ) ;
 TYPE_3__* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int unregister_hdlc_device (int ) ;
 int wanxl_reset (TYPE_3__*) ;

__attribute__((used)) static void wanxl_pci_remove_one(struct pci_dev *pdev)
{
 card_t *card = pci_get_drvdata(pdev);
 int i;

 for (i = 0; i < card->n_ports; i++) {
  unregister_hdlc_device(card->ports[i].dev);
  free_netdev(card->ports[i].dev);
 }


 if (card->irq)
  free_irq(card->irq, card);

 wanxl_reset(card);

 for (i = 0; i < RX_QUEUE_LENGTH; i++)
  if (card->rx_skbs[i]) {
   pci_unmap_single(card->pdev,
      card->status->rx_descs[i].address,
      BUFFER_LENGTH, PCI_DMA_FROMDEVICE);
   dev_kfree_skb(card->rx_skbs[i]);
  }

 if (card->plx)
  iounmap(card->plx);

 if (card->status)
  pci_free_consistent(pdev, sizeof(card_status_t),
        card->status, card->status_address);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
 kfree(card);
}
