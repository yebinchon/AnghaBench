
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; } ;


 int FLG_L2BLOCK ;
 int FLG_PEER_BUSY ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
clear_peer_busy(struct layer2 *l2) {
 if (test_and_clear_bit(FLG_PEER_BUSY, &l2->flag))
  test_and_clear_bit(FLG_L2BLOCK, &l2->flag);
}
