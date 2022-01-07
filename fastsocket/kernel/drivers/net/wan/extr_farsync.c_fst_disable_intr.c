
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_card_info {scalar_t__ family; scalar_t__ pci_conf; } ;


 scalar_t__ FST_FAMILY_TXU ;
 scalar_t__ INTCSR_9052 ;
 scalar_t__ INTCSR_9054 ;
 int outl (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static inline void
fst_disable_intr(struct fst_card_info *card)
{
 if (card->family == FST_FAMILY_TXU) {
  outl(0x00000000, card->pci_conf + INTCSR_9054);
 } else {
  outw(0x0000, card->pci_conf + INTCSR_9052);
 }
}
