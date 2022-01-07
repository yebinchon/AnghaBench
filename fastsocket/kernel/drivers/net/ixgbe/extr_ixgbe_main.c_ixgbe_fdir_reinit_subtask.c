
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int flags2; int flags; int num_tx_queues; TYPE_1__** tx_ring; int fdir_overflow; int state; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int state; } ;


 int IXGBE_EIMS ;
 int IXGBE_EIMS_FLOW_DIR ;
 int IXGBE_FLAG2_FDIR_REQUIRES_REINIT ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int __IXGBE_DOWN ;
 int __IXGBE_TX_FDIR_INIT_DONE ;
 int e_err (int ,char*) ;
 scalar_t__ ixgbe_reinit_fdir_tables_82599 (struct ixgbe_hw*) ;
 int probe ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_fdir_reinit_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int i;

 if (!(adapter->flags2 & IXGBE_FLAG2_FDIR_REQUIRES_REINIT))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_FDIR_REQUIRES_REINIT;


 if (test_bit(__IXGBE_DOWN, &adapter->state))
  return;


 if (!(adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE))
  return;

 adapter->fdir_overflow++;

 if (ixgbe_reinit_fdir_tables_82599(hw) == 0) {
  for (i = 0; i < adapter->num_tx_queues; i++)
   set_bit(__IXGBE_TX_FDIR_INIT_DONE,
           &(adapter->tx_ring[i]->state));

  IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMS_FLOW_DIR);
 } else {
  e_err(probe, "failed to finish FDIR re-initialization, "
        "ignored adding FDIR ATR filters\n");
 }
}
