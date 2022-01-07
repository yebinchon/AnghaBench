
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct w6692_hw {char* name; int log; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ maxlen; int nr; TYPE_2__* rx_skb; struct w6692_hw* hw; } ;
struct w6692_ch {TYPE_1__ bch; scalar_t__ addr; } ;
struct TYPE_6__ {scalar_t__ len; } ;


 int DEBUG_HW_DFIFO ;
 int DUMP_PREFIX_OFFSET ;
 int GFP_ATOMIC ;
 scalar_t__ ISDN_P_NONE ;
 int W_B_CMDR ;
 int W_B_CMDR_RACK ;
 int W_B_CMDR_RACT ;
 scalar_t__ W_B_RFIFO ;
 int WriteW6692B (struct w6692_ch*,int ,int) ;
 int debug ;
 int insb (scalar_t__,int *,int) ;
 TYPE_2__* mI_alloc_skb (scalar_t__,int ) ;
 int pr_debug (char*,char*,...) ;
 int pr_info (char*,char*) ;
 int print_hex_dump_bytes (int ,int ,int *,int) ;
 int * skb_put (TYPE_2__*,int) ;
 int skb_trim (TYPE_2__*,int ) ;
 int snprintf (int ,int,char*,int,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
W6692_empty_Bfifo(struct w6692_ch *wch, int count)
{
 struct w6692_hw *card = wch->bch.hw;
 u8 *ptr;

 pr_debug("%s: empty_Bfifo %d\n", card->name, count);
 if (unlikely(wch->bch.state == ISDN_P_NONE)) {
  pr_debug("%s: empty_Bfifo ISDN_P_NONE\n", card->name);
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
  if (wch->bch.rx_skb)
   skb_trim(wch->bch.rx_skb, 0);
  return;
 }
 if (!wch->bch.rx_skb) {
  wch->bch.rx_skb = mI_alloc_skb(wch->bch.maxlen, GFP_ATOMIC);
  if (unlikely(!wch->bch.rx_skb)) {
   pr_info("%s: B receive out of memory\n", card->name);
   WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK |
    W_B_CMDR_RACT);
   return;
  }
 }
 if (wch->bch.rx_skb->len + count > wch->bch.maxlen) {
  pr_debug("%s: empty_Bfifo incoming packet too large\n",
   card->name);
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
  skb_trim(wch->bch.rx_skb, 0);
  return;
 }
 ptr = skb_put(wch->bch.rx_skb, count);
 insb(wch->addr + W_B_RFIFO, ptr, count);
 WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
 if (debug & DEBUG_HW_DFIFO) {
  snprintf(card->log, 63, "B%1d-recv %s %d ",
   wch->bch.nr, card->name, count);
  print_hex_dump_bytes(card->log, DUMP_PREFIX_OFFSET, ptr, count);
 }
}
