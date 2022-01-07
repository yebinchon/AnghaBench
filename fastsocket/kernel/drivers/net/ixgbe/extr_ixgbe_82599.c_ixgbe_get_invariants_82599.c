
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_mac_info {int max_msix_vectors; int max_tx_queues; int max_rx_queues; int num_rar_entries; int vft_size; int mcft_size; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int IXGBE_82599_MAX_RX_QUEUES ;
 int IXGBE_82599_MAX_TX_QUEUES ;
 int IXGBE_82599_MC_TBL_SIZE ;
 int IXGBE_82599_RAR_ENTRIES ;
 int IXGBE_82599_VFT_TBL_SIZE ;
 int ixgbe_get_pcie_msix_count_generic (struct ixgbe_hw*) ;
 int ixgbe_init_mac_link_ops_82599 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_get_invariants_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;

 ixgbe_init_mac_link_ops_82599(hw);

 mac->mcft_size = IXGBE_82599_MC_TBL_SIZE;
 mac->vft_size = IXGBE_82599_VFT_TBL_SIZE;
 mac->num_rar_entries = IXGBE_82599_RAR_ENTRIES;
 mac->max_rx_queues = IXGBE_82599_MAX_RX_QUEUES;
 mac->max_tx_queues = IXGBE_82599_MAX_TX_QUEUES;
 mac->max_msix_vectors = ixgbe_get_pcie_msix_count_generic(hw);

 return 0;
}
