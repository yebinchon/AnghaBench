
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int timer; int Flags; } ;
struct w6692_hw {TYPE_1__ dch; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int FLG_BUSY_TIMER ;
 int W6692_fill_Dfifo (struct w6692_hw*) ;
 int del_timer (int *) ;
 int dev_kfree_skb (TYPE_2__*) ;
 scalar_t__ get_next_dframe (TYPE_1__*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
handle_txD(struct w6692_hw *card) {
 if (test_and_clear_bit(FLG_BUSY_TIMER, &card->dch.Flags))
  del_timer(&card->dch.timer);
 if (card->dch.tx_skb && card->dch.tx_idx < card->dch.tx_skb->len) {
  W6692_fill_Dfifo(card);
 } else {
  if (card->dch.tx_skb)
   dev_kfree_skb(card->dch.tx_skb);
  if (get_next_dframe(&card->dch))
   W6692_fill_Dfifo(card);
 }
}
