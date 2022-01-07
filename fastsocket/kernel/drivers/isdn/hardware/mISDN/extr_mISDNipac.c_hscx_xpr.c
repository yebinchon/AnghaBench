
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int Flags; } ;
struct hscx_hw {TYPE_1__ bch; } ;
struct TYPE_5__ {scalar_t__ len; } ;


 int FLG_TRANSPARENT ;
 int confirm_Bsend (TYPE_1__*) ;
 int dev_kfree_skb (TYPE_2__*) ;
 scalar_t__ get_next_bframe (TYPE_1__*) ;
 int hscx_fill_fifo (struct hscx_hw*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
hscx_xpr(struct hscx_hw *hx)
{
 if (hx->bch.tx_skb && hx->bch.tx_idx < hx->bch.tx_skb->len)
  hscx_fill_fifo(hx);
 else {
  if (hx->bch.tx_skb) {

   if (test_bit(FLG_TRANSPARENT, &hx->bch.Flags))
    confirm_Bsend(&hx->bch);
   dev_kfree_skb(hx->bch.tx_skb);
  }
  if (get_next_bframe(&hx->bch))
   hscx_fill_fifo(hx);
 }
}
