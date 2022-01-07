
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* enable_rx_buff ) (struct ixgbe_hw*) ;int (* disable_rx_buff ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_RXCTRL ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, u32 regval)
{






 hw->mac.ops.disable_rx_buff(hw);

 IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, regval);

 hw->mac.ops.enable_rx_buff(hw);

 return 0;
}
