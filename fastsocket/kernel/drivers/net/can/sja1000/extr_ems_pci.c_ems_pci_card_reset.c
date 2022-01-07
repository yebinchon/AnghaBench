
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ems_pci_card {int base_addr; } ;


 int writeb (int ,int ) ;

__attribute__((used)) static void ems_pci_card_reset(struct ems_pci_card *card)
{

 writeb(0, card->base_addr);
}
