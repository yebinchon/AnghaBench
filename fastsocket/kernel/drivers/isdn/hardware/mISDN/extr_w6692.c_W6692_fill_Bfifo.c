
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct w6692_hw {char* name; int log; } ;
struct TYPE_4__ {int tx_idx; int nr; int Flags; TYPE_1__* tx_skb; struct w6692_hw* hw; } ;
struct w6692_ch {TYPE_2__ bch; scalar_t__ addr; } ;
struct TYPE_3__ {int len; int* data; } ;


 int DEBUG_HW_DFIFO ;
 int DUMP_PREFIX_OFFSET ;
 int FLG_HDLC ;
 int W_B_CMDR ;
 int W_B_CMDR_RACT ;
 int W_B_CMDR_XME ;
 int W_B_CMDR_XMS ;
 int W_B_FIFO_THRESH ;
 scalar_t__ W_B_XFIFO ;
 int WriteW6692B (struct w6692_ch*,int ,int) ;
 int debug ;
 int outsb (scalar_t__,int*,int) ;
 int pr_debug (char*,char*,...) ;
 int print_hex_dump_bytes (int ,int ,int*,int) ;
 int snprintf (int ,int,char*,int,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
W6692_fill_Bfifo(struct w6692_ch *wch)
{
 struct w6692_hw *card = wch->bch.hw;
 int count;
 u8 *ptr, cmd = W_B_CMDR_RACT | W_B_CMDR_XMS;

 pr_debug("%s: fill Bfifo\n", card->name);
 if (!wch->bch.tx_skb)
  return;
 count = wch->bch.tx_skb->len - wch->bch.tx_idx;
 if (count <= 0)
  return;
 ptr = wch->bch.tx_skb->data + wch->bch.tx_idx;
 if (count > W_B_FIFO_THRESH)
  count = W_B_FIFO_THRESH;
 else if (test_bit(FLG_HDLC, &wch->bch.Flags))
  cmd |= W_B_CMDR_XME;

 pr_debug("%s: fill Bfifo%d/%d\n", card->name,
   count, wch->bch.tx_idx);
 wch->bch.tx_idx += count;
 outsb(wch->addr + W_B_XFIFO, ptr, count);
 WriteW6692B(wch, W_B_CMDR, cmd);
 if (debug & DEBUG_HW_DFIFO) {
  snprintf(card->log, 63, "B%1d-send %s %d ",
   wch->bch.nr, card->name, count);
  print_hex_dump_bytes(card->log, DUMP_PREFIX_OFFSET, ptr, count);
 }
}
