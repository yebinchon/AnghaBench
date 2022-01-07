
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; int ui_queue; int i_queue; } ;


 int FLG_L2BLOCK ;
 int FLG_PEER_BUSY ;
 scalar_t__ skb_queue_len (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
set_peer_busy(struct layer2 *l2) {
 test_and_set_bit(FLG_PEER_BUSY, &l2->flag);
 if (skb_queue_len(&l2->i_queue) || skb_queue_len(&l2->ui_queue))
  test_and_set_bit(FLG_L2BLOCK, &l2->flag);
}
