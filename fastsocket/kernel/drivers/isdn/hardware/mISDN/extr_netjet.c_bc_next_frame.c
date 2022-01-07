
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int Flags; } ;
struct tiger_ch {TYPE_1__ bch; } ;
struct TYPE_5__ {scalar_t__ len; } ;


 int FLG_TRANSPARENT ;
 int confirm_Bsend (TYPE_1__*) ;
 int dev_kfree_skb (TYPE_2__*) ;
 int fill_dma (struct tiger_ch*) ;
 scalar_t__ get_next_bframe (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
bc_next_frame(struct tiger_ch *bc)
{
 if (bc->bch.tx_skb && bc->bch.tx_idx < bc->bch.tx_skb->len)
  fill_dma(bc);
 else {
  if (bc->bch.tx_skb) {

   if (test_bit(FLG_TRANSPARENT, &bc->bch.Flags))
    confirm_Bsend(&bc->bch);
   dev_kfree_skb(bc->bch.tx_skb);
  }
  if (get_next_bframe(&bc->bch))
   fill_dma(bc);
  else
   return 0;
 }
 return 1;
}
