
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dchannel {int maxlen; TYPE_1__* rx_skb; } ;
struct w6692_hw {char* name; int log; scalar_t__ addr; struct dchannel dch; } ;
struct TYPE_3__ {int len; } ;


 int DEBUG_HW_DFIFO ;
 int DUMP_PREFIX_OFFSET ;
 int GFP_ATOMIC ;
 int W_D_CMDR ;
 int W_D_CMDR_RACK ;
 scalar_t__ W_D_RFIFO ;
 int WriteW6692 (struct w6692_hw*,int ,int ) ;
 int debug ;
 int insb (scalar_t__,int *,int) ;
 TYPE_1__* mI_alloc_skb (int,int ) ;
 int pr_debug (char*,char*,int) ;
 int pr_info (char*,char*) ;
 int print_hex_dump_bytes (int ,int ,int *,int) ;
 int * skb_put (TYPE_1__*,int) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static void
W6692_empty_Dfifo(struct w6692_hw *card, int count)
{
 struct dchannel *dch = &card->dch;
 u8 *ptr;

 pr_debug("%s: empty_Dfifo %d\n", card->name, count);
 if (!dch->rx_skb) {
  dch->rx_skb = mI_alloc_skb(card->dch.maxlen, GFP_ATOMIC);
  if (!dch->rx_skb) {
   pr_info("%s: D receive out of memory\n", card->name);
   WriteW6692(card, W_D_CMDR, W_D_CMDR_RACK);
   return;
  }
 }
 if ((dch->rx_skb->len + count) >= dch->maxlen) {
  pr_debug("%s: empty_Dfifo overrun %d\n", card->name,
   dch->rx_skb->len + count);
  WriteW6692(card, W_D_CMDR, W_D_CMDR_RACK);
  return;
 }
 ptr = skb_put(dch->rx_skb, count);
 insb(card->addr + W_D_RFIFO, ptr, count);
 WriteW6692(card, W_D_CMDR, W_D_CMDR_RACK);
 if (debug & DEBUG_HW_DFIFO) {
  snprintf(card->log, 63, "D-recv %s %d ",
   card->name, count);
  print_hex_dump_bytes(card->log, DUMP_PREFIX_OFFSET, ptr, count);
 }
}
