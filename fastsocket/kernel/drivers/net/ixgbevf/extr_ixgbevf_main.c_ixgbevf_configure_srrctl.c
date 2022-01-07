
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbevf_ring {int rx_buf_len; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbevf_ring* rx_ring; struct ixgbe_hw hw; } ;


 int ALIGN (int ,int) ;
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ;
 int IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF ;
 int IXGBE_SRRCTL_DROP_EN ;
 int IXGBE_VFSRRCTL (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbevf_configure_srrctl(struct ixgbevf_adapter *adapter, int index)
{
 struct ixgbevf_ring *rx_ring;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 srrctl;

 rx_ring = &adapter->rx_ring[index];

 srrctl = IXGBE_SRRCTL_DROP_EN;

 srrctl |= IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF;

 srrctl |= ALIGN(rx_ring->rx_buf_len, 1024) >>
    IXGBE_SRRCTL_BSIZEPKT_SHIFT;

 IXGBE_WRITE_REG(hw, IXGBE_VFSRRCTL(index), srrctl);
}
