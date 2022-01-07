
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* identify_sfp ) (struct ixgbe_hw*) ;int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int type; int sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {int device_id; TYPE_2__ phy; } ;


 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_10G_CX4 ;
 int IXGBE_AUTOC_10G_KX4 ;
 int IXGBE_AUTOC_10G_PMA_PMD_MASK ;
 int IXGBE_AUTOC_1G_KX ;
 int IXGBE_AUTOC_1G_PMA_PMD_MASK ;
 int IXGBE_AUTOC_KX4_SUPP ;
 int IXGBE_AUTOC_KX_SUPP ;





 int IXGBE_AUTOC_LMS_MASK ;





 int IXGBE_PHYSICAL_LAYER_1000BASE_BX ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_KX ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_T ;
 int IXGBE_PHYSICAL_LAYER_100BASE_TX ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_CX4 ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_KX4 ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_LR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_SR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_T ;
 int IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU ;
 int IXGBE_PHYSICAL_LAYER_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_EXTABLE ;
 int MDIO_PMA_EXTABLE_1000BT ;
 int MDIO_PMA_EXTABLE_100BTX ;
 int MDIO_PMA_EXTABLE_10GBT ;

 int ixgbe_phy_nl ;




 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub3 (struct ixgbe_hw*) ;

__attribute__((used)) static u32 ixgbe_get_supported_physical_layer_82598(struct ixgbe_hw *hw)
{
 u32 physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
 u32 autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 u32 pma_pmd_10g = autoc & IXGBE_AUTOC_10G_PMA_PMD_MASK;
 u32 pma_pmd_1g = autoc & IXGBE_AUTOC_1G_PMA_PMD_MASK;
 u16 ext_ability = 0;

 hw->phy.ops.identify(hw);



 switch (hw->phy.type) {
 case 131:
 case 132:
  hw->phy.ops.read_reg(hw, MDIO_PMA_EXTABLE,
  MDIO_MMD_PMAPMD, &ext_ability);
  if (ext_ability & MDIO_PMA_EXTABLE_10GBT)
   physical_layer |= IXGBE_PHYSICAL_LAYER_10GBASE_T;
  if (ext_ability & MDIO_PMA_EXTABLE_1000BT)
   physical_layer |= IXGBE_PHYSICAL_LAYER_1000BASE_T;
  if (ext_ability & MDIO_PMA_EXTABLE_100BTX)
   physical_layer |= IXGBE_PHYSICAL_LAYER_100BASE_TX;
  goto out;
 default:
  break;
 }

 switch (autoc & IXGBE_AUTOC_LMS_MASK) {
 case 141:
 case 140:
  if (pma_pmd_1g == IXGBE_AUTOC_1G_KX)
   physical_layer = IXGBE_PHYSICAL_LAYER_1000BASE_KX;
  else
   physical_layer = IXGBE_PHYSICAL_LAYER_1000BASE_BX;
  break;
 case 142:
  if (pma_pmd_10g == IXGBE_AUTOC_10G_CX4)
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_CX4;
  else if (pma_pmd_10g == IXGBE_AUTOC_10G_KX4)
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_KX4;
  else
   physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
  break;
 case 139:
 case 138:
  if (autoc & IXGBE_AUTOC_KX_SUPP)
   physical_layer |= IXGBE_PHYSICAL_LAYER_1000BASE_KX;
  if (autoc & IXGBE_AUTOC_KX4_SUPP)
   physical_layer |= IXGBE_PHYSICAL_LAYER_10GBASE_KX4;
  break;
 default:
  break;
 }

 if (hw->phy.type == ixgbe_phy_nl) {
  hw->phy.ops.identify_sfp(hw);

  switch (hw->phy.sfp_type) {
  case 130:
   physical_layer = IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU;
   break;
  case 128:
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_SR;
   break;
  case 129:
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_LR;
   break;
  default:
   physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
   break;
  }
 }

 switch (hw->device_id) {
 case 134:
  physical_layer = IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU;
  break;
 case 137:
 case 136:
 case 133:
  physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_SR;
  break;
 case 135:
  physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_LR;
  break;
 default:
  break;
 }

out:
 return physical_layer;
}
