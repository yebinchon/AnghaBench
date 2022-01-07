
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int dummy; } ;
struct BCState {scalar_t__ tx_cnt; scalar_t__ event; int Flag; int * tx_skb; int squeue; int rqueue; } ;


 int BC_FLG_BUSY ;
 int BC_FLG_INIT ;
 int skb_queue_head_init (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
open_hfcstate(struct IsdnCardState *cs, struct BCState *bcs)
{
 if (!test_and_set_bit(BC_FLG_INIT, &bcs->Flag)) {
  skb_queue_head_init(&bcs->rqueue);
  skb_queue_head_init(&bcs->squeue);
 }
 bcs->tx_skb = ((void*)0);
 test_and_clear_bit(BC_FLG_BUSY, &bcs->Flag);
 bcs->event = 0;
 bcs->tx_cnt = 0;
 return (0);
}
