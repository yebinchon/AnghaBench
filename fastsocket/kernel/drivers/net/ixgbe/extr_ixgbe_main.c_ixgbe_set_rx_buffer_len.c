
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int mtu; } ;
struct ixgbe_ring {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int flags; int num_rx_queues; int flags2; struct ixgbe_ring** rx_ring; struct net_device* netdev; struct ixgbe_hw hw; } ;


 int ETH_FCS_LEN ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 int IXGBE_FCOE_JUMBO_FRAME_SIZE ;
 int IXGBE_FLAG2_RSC_ENABLED ;
 int IXGBE_FLAG_FCOE_ENABLED ;
 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_JUMBOEN ;
 int IXGBE_MHADD ;
 int IXGBE_MHADD_MFS_MASK ;
 int IXGBE_MHADD_MFS_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int clear_ring_rsc_enabled (struct ixgbe_ring*) ;
 int set_ring_rsc_enabled (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 int max_frame = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;
 struct ixgbe_ring *rx_ring;
 int i;
 u32 mhadd, hlreg0;
 if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
  max_frame = (ETH_FRAME_LEN + ETH_FCS_LEN);

 mhadd = IXGBE_READ_REG(hw, IXGBE_MHADD);
 if (max_frame != (mhadd >> IXGBE_MHADD_MFS_SHIFT)) {
  mhadd &= ~IXGBE_MHADD_MFS_MASK;
  mhadd |= max_frame << IXGBE_MHADD_MFS_SHIFT;

  IXGBE_WRITE_REG(hw, IXGBE_MHADD, mhadd);
 }

 hlreg0 = IXGBE_READ_REG(hw, IXGBE_HLREG0);

 hlreg0 |= IXGBE_HLREG0_JUMBOEN;
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0);





 for (i = 0; i < adapter->num_rx_queues; i++) {
  rx_ring = adapter->rx_ring[i];
  if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
   set_ring_rsc_enabled(rx_ring);
  else
   clear_ring_rsc_enabled(rx_ring);
 }
}
