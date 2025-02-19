
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bchannel {scalar_t__ tx_idx; TYPE_1__* tx_skb; int Flags; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int FLG_TRANSPARENT ;
 int confirm_Bsend (struct bchannel*) ;
 int dev_kfree_skb (TYPE_1__*) ;
 scalar_t__ get_next_bframe (struct bchannel*) ;
 int hdlc_fill_fifo (struct bchannel*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
HDLC_irq_xpr(struct bchannel *bch)
{
 if (bch->tx_skb && bch->tx_idx < bch->tx_skb->len)
  hdlc_fill_fifo(bch);
 else {
  if (bch->tx_skb) {

   if (test_bit(FLG_TRANSPARENT, &bch->Flags))
    confirm_Bsend(bch);
   dev_kfree_skb(bch->tx_skb);
  }
  if (get_next_bframe(bch))
   hdlc_fill_fifo(bch);
 }
}
