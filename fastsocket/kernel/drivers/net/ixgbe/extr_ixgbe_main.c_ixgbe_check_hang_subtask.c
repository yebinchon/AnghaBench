
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbe_q_vector {TYPE_2__ tx; TYPE_1__ rx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int num_tx_queues; int flags; int num_q_vectors; struct ixgbe_q_vector** q_vector; int * tx_ring; int netdev; int state; struct ixgbe_hw hw; } ;


 int IXGBE_EICS ;
 int IXGBE_EICS_OTHER ;
 int IXGBE_EICS_TCP_TIMER ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBE_DOWN ;
 int __IXGBE_RESETTING ;
 int ixgbe_irq_rearm_queues (struct ixgbe_adapter*,int) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int set_check_for_tx_hang (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_check_hang_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 eics = 0;
 int i;


 if (test_bit(__IXGBE_DOWN, &adapter->state) ||
     test_bit(__IXGBE_RESETTING, &adapter->state))
  return;


 if (netif_carrier_ok(adapter->netdev)) {
  for (i = 0; i < adapter->num_tx_queues; i++)
   set_check_for_tx_hang(adapter->tx_ring[i]);
 }

 if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {





  IXGBE_WRITE_REG(hw, IXGBE_EICS,
   (IXGBE_EICS_TCP_TIMER | IXGBE_EICS_OTHER));
 } else {

  for (i = 0; i < adapter->num_q_vectors; i++) {
   struct ixgbe_q_vector *qv = adapter->q_vector[i];
   if (qv->rx.ring || qv->tx.ring)
    eics |= ((u64)1 << i);
  }
 }


 ixgbe_irq_rearm_queues(adapter, eics);

}
