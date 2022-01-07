
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * rx_skb; int err_rx; int err_crc; } ;
struct w6692_hw {TYPE_1__ dch; int name; } ;


 int ReadW6692 (struct w6692_hw*,int ) ;
 int W6692_empty_Dfifo (struct w6692_hw*,int) ;
 int W_D_CMDR ;
 int W_D_CMDR_RACK ;
 int W_D_CMDR_RRST ;
 int W_D_FIFO_THRESH ;
 int W_D_RBCL ;
 int W_D_RSTA ;
 int W_D_RSTA_CRCE ;
 int W_D_RSTA_RDOV ;
 int W_D_RSTA_RMB ;
 int WriteW6692 (struct w6692_hw*,int ,int) ;
 int dev_kfree_skb (int *) ;
 int pr_debug (char*,int ) ;
 int recv_Dchannel (TYPE_1__*) ;

__attribute__((used)) static void
handle_rxD(struct w6692_hw *card) {
 u8 stat;
 int count;

 stat = ReadW6692(card, W_D_RSTA);
 if (stat & (W_D_RSTA_RDOV | W_D_RSTA_CRCE | W_D_RSTA_RMB)) {
  if (stat & W_D_RSTA_RDOV) {
   pr_debug("%s: D-channel RDOV\n", card->name);



  }
  if (stat & W_D_RSTA_CRCE) {
   pr_debug("%s: D-channel CRC error\n", card->name);



  }
  if (stat & W_D_RSTA_RMB) {
   pr_debug("%s: D-channel ABORT\n", card->name);



  }
  if (card->dch.rx_skb)
   dev_kfree_skb(card->dch.rx_skb);
  card->dch.rx_skb = ((void*)0);
  WriteW6692(card, W_D_CMDR, W_D_CMDR_RACK | W_D_CMDR_RRST);
 } else {
  count = ReadW6692(card, W_D_RBCL) & (W_D_FIFO_THRESH - 1);
  if (count == 0)
   count = W_D_FIFO_THRESH;
  W6692_empty_Dfifo(card, count);
  recv_Dchannel(&card->dch);
 }
}
