
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_done_old; } ;
struct ixgbe_ring {int state; TYPE_1__ tx_stats; } ;


 int __IXGBE_HANG_CHECK_ARMED ;
 int clear_bit (int ,int *) ;
 int clear_check_for_tx_hang (struct ixgbe_ring*) ;
 scalar_t__ ixgbe_get_tx_completed (struct ixgbe_ring*) ;
 scalar_t__ ixgbe_get_tx_pending (struct ixgbe_ring*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
{
 u32 tx_done = ixgbe_get_tx_completed(tx_ring);
 u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
 u32 tx_pending = ixgbe_get_tx_pending(tx_ring);
 bool ret = 0;

 clear_check_for_tx_hang(tx_ring);
 if ((tx_done_old == tx_done) && tx_pending) {

  ret = test_and_set_bit(__IXGBE_HANG_CHECK_ARMED,
           &tx_ring->state);
 } else {

  tx_ring->tx_stats.tx_done_old = tx_done;

  clear_bit(__IXGBE_HANG_CHECK_ARMED, &tx_ring->state);
 }

 return ret;
}
