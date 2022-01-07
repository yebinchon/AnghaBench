
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbevf_q_vector {TYPE_2__ tx; TYPE_1__ rx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_msix_vectors; int watchdog_task; struct ixgbevf_q_vector** q_vector; int state; struct ixgbe_hw hw; } ;


 int IXGBE_VTEICS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int NON_Q_VECTORS ;
 int __IXGBEVF_DOWN ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_watchdog(unsigned long data)
{
 struct ixgbevf_adapter *adapter = (struct ixgbevf_adapter *)data;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 eics = 0;
 int i;






 if (test_bit(__IXGBEVF_DOWN, &adapter->state))
  goto watchdog_short_circuit;


 for (i = 0; i < adapter->num_msix_vectors - NON_Q_VECTORS; i++) {
  struct ixgbevf_q_vector *qv = adapter->q_vector[i];
  if (qv->rx.ring || qv->tx.ring)
   eics |= 1 << i;
 }

 IXGBE_WRITE_REG(hw, IXGBE_VTEICS, eics);

watchdog_short_circuit:
 schedule_work(&adapter->watchdog_task);
}
