
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int pdev; int regs; } ;


 int iounmap (int ) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static void
spider_net_undo_pci_setup(struct spider_net_card *card)
{
 iounmap(card->regs);
 pci_release_regions(card->pdev);
}
