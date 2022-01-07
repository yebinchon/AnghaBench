
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paddr; int base; } ;
struct idt77252_dev {TYPE_1__ rsq; int pcidev; } ;


 int RSQSIZE ;
 int pci_free_consistent (int ,int ,int ,int ) ;

__attribute__((used)) static void
deinit_rsq(struct idt77252_dev *card)
{
 pci_free_consistent(card->pcidev, RSQSIZE,
       card->rsq.base, card->rsq.paddr);
}
