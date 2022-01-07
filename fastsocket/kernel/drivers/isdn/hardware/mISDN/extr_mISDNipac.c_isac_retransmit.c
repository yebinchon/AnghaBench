
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_idx; int Flags; scalar_t__ tx_skb; int timer; } ;
struct isac_hw {TYPE_1__ dch; int name; } ;


 int FLG_BUSY_TIMER ;
 int FLG_TX_BUSY ;
 int del_timer (int *) ;
 scalar_t__ get_next_dframe (TYPE_1__*) ;
 int isac_fill_fifo (struct isac_hw*) ;
 int pr_info (char*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
isac_retransmit(struct isac_hw *isac)
{
 if (test_and_clear_bit(FLG_BUSY_TIMER, &isac->dch.Flags))
  del_timer(&isac->dch.timer);
 if (test_bit(FLG_TX_BUSY, &isac->dch.Flags)) {

  isac->dch.tx_idx = 0;
  isac_fill_fifo(isac);
 } else if (isac->dch.tx_skb) {
  pr_info("%s: tx_skb exist but not busy\n", isac->name);
  test_and_set_bit(FLG_TX_BUSY, &isac->dch.Flags);
  isac->dch.tx_idx = 0;
  isac_fill_fifo(isac);
 } else {
  pr_info("%s: ISAC XDU no TX_BUSY\n", isac->name);
  if (get_next_dframe(&isac->dch))
   isac_fill_fifo(isac);
 }
}
