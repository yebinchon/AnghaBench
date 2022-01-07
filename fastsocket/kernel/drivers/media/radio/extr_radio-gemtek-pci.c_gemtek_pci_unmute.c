
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek_pci {int mute; int current_frequency; } ;


 int gemtek_pci_setfrequency (struct gemtek_pci*,int ) ;

__attribute__((used)) static void gemtek_pci_unmute(struct gemtek_pci *card)
{
 if (card->mute) {
  gemtek_pci_setfrequency(card, card->current_frequency);
  card->mute = 0;
 }
}
