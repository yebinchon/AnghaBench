
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rsxx_cardinfo {int eeh_state; int n_targets; TYPE_3__* ctrl; int dev; } ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {int dma_addr; scalar_t__ buf; } ;
struct TYPE_4__ {int dma_addr; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ cmd; TYPE_1__ status; } ;


 int COMMAND_BUFFER_SIZE8 ;
 int STATUS_BUFFER_SIZE8 ;
 int dev_warn (int *,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;
 struct rsxx_cardinfo* pci_get_drvdata (struct pci_dev*) ;
 int rsxx_eeh_save_issued_creg (struct rsxx_cardinfo*) ;
 int rsxx_eeh_save_issued_dmas (struct rsxx_cardinfo*) ;
 int rsxx_mask_interrupts (struct rsxx_cardinfo*) ;
 int wmb () ;

__attribute__((used)) static int rsxx_eeh_frozen(struct pci_dev *dev)
{
 struct rsxx_cardinfo *card = pci_get_drvdata(dev);
 int i;
 int st;

 dev_warn(&dev->dev, "IBM Flash Adapter PCI: preparing for slot reset.\n");

 card->eeh_state = 1;
 rsxx_mask_interrupts(card);






 wmb();

 pci_disable_device(dev);

 st = rsxx_eeh_save_issued_dmas(card);
 if (st)
  return st;

 rsxx_eeh_save_issued_creg(card);

 for (i = 0; i < card->n_targets; i++) {
  if (card->ctrl[i].status.buf)
   pci_free_consistent(card->dev, STATUS_BUFFER_SIZE8,
         card->ctrl[i].status.buf,
         card->ctrl[i].status.dma_addr);
  if (card->ctrl[i].cmd.buf)
   pci_free_consistent(card->dev, COMMAND_BUFFER_SIZE8,
         card->ctrl[i].cmd.buf,
         card->ctrl[i].cmd.dma_addr);
 }

 return 0;
}
