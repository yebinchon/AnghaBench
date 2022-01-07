
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_card_info {scalar_t__ family; int ctlmem; scalar_t__ pci_conf; int mem; } ;


 scalar_t__ CNTRL_9054 ;
 scalar_t__ FST_FAMILY_TXU ;
 int outw (int,scalar_t__) ;
 int readb (int ) ;

__attribute__((used)) static inline void
fst_cpurelease(struct fst_card_info *card)
{
 if (card->family == FST_FAMILY_TXU) {



  (void) readb(card->mem);





  outw(0x040e, card->pci_conf + CNTRL_9054 + 2);
  outw(0x040f, card->pci_conf + CNTRL_9054 + 2);
 } else {
  (void) readb(card->ctlmem);
 }
}
