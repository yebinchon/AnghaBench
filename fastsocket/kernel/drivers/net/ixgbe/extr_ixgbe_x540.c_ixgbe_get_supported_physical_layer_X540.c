
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;


 int IXGBE_PHYSICAL_LAYER_1000BASE_T ;
 int IXGBE_PHYSICAL_LAYER_100BASE_TX ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_T ;
 int IXGBE_PHYSICAL_LAYER_UNKNOWN ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_EXTABLE ;
 int MDIO_PMA_EXTABLE_1000BT ;
 int MDIO_PMA_EXTABLE_100BTX ;
 int MDIO_PMA_EXTABLE_10GBT ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static u32 ixgbe_get_supported_physical_layer_X540(struct ixgbe_hw *hw)
{
 u32 physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
 u16 ext_ability = 0;

 hw->phy.ops.identify(hw);

 hw->phy.ops.read_reg(hw, MDIO_PMA_EXTABLE, MDIO_MMD_PMAPMD,
        &ext_ability);
 if (ext_ability & MDIO_PMA_EXTABLE_10GBT)
  physical_layer |= IXGBE_PHYSICAL_LAYER_10GBASE_T;
 if (ext_ability & MDIO_PMA_EXTABLE_1000BT)
  physical_layer |= IXGBE_PHYSICAL_LAYER_1000BASE_T;
 if (ext_ability & MDIO_PMA_EXTABLE_100BTX)
  physical_layer |= IXGBE_PHYSICAL_LAYER_100BASE_TX;

 return physical_layer;
}
