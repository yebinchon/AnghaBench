
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbevf_ring {int reg_idx; } ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_VFRDT (int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void ixgbevf_release_rx_desc(struct ixgbe_hw *hw,
        struct ixgbevf_ring *rx_ring,
        u32 val)
{






 wmb();
 IXGBE_WRITE_REG(hw, IXGBE_VFRDT(rx_ring->reg_idx), val);
}
