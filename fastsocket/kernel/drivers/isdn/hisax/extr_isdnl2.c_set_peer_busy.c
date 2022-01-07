
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Layer2 {int flag; int ui_queue; int i_queue; } ;


 int FLG_L2BLOCK ;
 int FLG_PEER_BUSY ;
 int skb_queue_empty (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
set_peer_busy(struct Layer2 *l2) {
 test_and_set_bit(FLG_PEER_BUSY, &l2->flag);
 if (!skb_queue_empty(&l2->i_queue) ||
     !skb_queue_empty(&l2->ui_queue))
  test_and_set_bit(FLG_L2BLOCK, &l2->flag);
}
