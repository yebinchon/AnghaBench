
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_card_info {int dmarx_in_progress; scalar_t__ pci_conf; } ;


 int DBG_ASS ;
 int DBG_RX ;
 scalar_t__ DMACSR0 ;
 scalar_t__ DMADPR0 ;
 scalar_t__ DMALADR0 ;
 scalar_t__ DMAPADR0 ;
 scalar_t__ DMASIZ0 ;
 int dbg (int ,char*,...) ;
 int outb (int,scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static inline void
fst_rx_dma(struct fst_card_info *card, unsigned char *skb,
    unsigned char *mem, int len)
{




 dbg(DBG_RX, "In fst_rx_dma %p %p %d\n", skb, mem, len);
 if (card->dmarx_in_progress) {
  dbg(DBG_ASS, "In fst_rx_dma while dma in progress\n");
 }

 outl((unsigned long) skb, card->pci_conf + DMAPADR0);
 outl((unsigned long) mem, card->pci_conf + DMALADR0);
 outl(len, card->pci_conf + DMASIZ0);
 outl(0x00000000c, card->pci_conf + DMADPR0);




 card->dmarx_in_progress = 1;
 outb(0x03, card->pci_conf + DMACSR0);
}
