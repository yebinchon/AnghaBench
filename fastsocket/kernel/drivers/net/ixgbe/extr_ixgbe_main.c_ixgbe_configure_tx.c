
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {size_t num_tx_queues; int * tx_ring; struct ixgbe_hw hw; } ;


 int IXGBE_DMATXCTL ;
 size_t IXGBE_DMATXCTL_TE ;
 size_t IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 int ixgbe_configure_tx_ring (struct ixgbe_adapter*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_setup_mtqc (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_configure_tx(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 dmatxctl;
 u32 i;

 ixgbe_setup_mtqc(adapter);

 if (hw->mac.type != ixgbe_mac_82598EB) {

  dmatxctl = IXGBE_READ_REG(hw, IXGBE_DMATXCTL);
  dmatxctl |= IXGBE_DMATXCTL_TE;
  IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL, dmatxctl);
 }


 for (i = 0; i < adapter->num_tx_queues; i++)
  ixgbe_configure_tx_ring(adapter, adapter->tx_ring[i]);
}
