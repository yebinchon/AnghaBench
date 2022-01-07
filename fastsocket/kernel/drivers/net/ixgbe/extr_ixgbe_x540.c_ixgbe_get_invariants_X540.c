
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_mac_info {int max_msix_vectors; int max_tx_queues; int max_rx_queues; int num_rar_entries; int vft_size; int mcft_size; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int IXGBE_X540_MAX_RX_QUEUES ;
 int IXGBE_X540_MAX_TX_QUEUES ;
 int IXGBE_X540_MC_TBL_SIZE ;
 int IXGBE_X540_RAR_ENTRIES ;
 int IXGBE_X540_VFT_TBL_SIZE ;
 int ixgbe_get_pcie_msix_count_generic (struct ixgbe_hw*) ;
 int ixgbe_identify_phy_generic (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_get_invariants_X540(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;


 ixgbe_identify_phy_generic(hw);

 mac->mcft_size = IXGBE_X540_MC_TBL_SIZE;
 mac->vft_size = IXGBE_X540_VFT_TBL_SIZE;
 mac->num_rar_entries = IXGBE_X540_RAR_ENTRIES;
 mac->max_rx_queues = IXGBE_X540_MAX_RX_QUEUES;
 mac->max_tx_queues = IXGBE_X540_MAX_TX_QUEUES;
 mac->max_msix_vectors = ixgbe_get_pcie_msix_count_generic(hw);

 return 0;
}
