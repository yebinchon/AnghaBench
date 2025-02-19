
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int Flags; } ;
struct w6692_ch {TYPE_1__ bch; } ;
struct TYPE_5__ {scalar_t__ len; } ;


 int FLG_TRANSPARENT ;
 int W6692_fill_Bfifo (struct w6692_ch*) ;
 int confirm_Bsend (TYPE_1__*) ;
 int dev_kfree_skb (TYPE_2__*) ;
 scalar_t__ get_next_bframe (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
send_next(struct w6692_ch *wch)
{
 if (wch->bch.tx_skb && wch->bch.tx_idx < wch->bch.tx_skb->len)
  W6692_fill_Bfifo(wch);
 else {
  if (wch->bch.tx_skb) {

   if (test_bit(FLG_TRANSPARENT, &wch->bch.Flags))
    confirm_Bsend(&wch->bch);
   dev_kfree_skb(wch->bch.tx_skb);
  }
  if (get_next_bframe(&wch->bch))
   W6692_fill_Bfifo(wch);
 }
}
