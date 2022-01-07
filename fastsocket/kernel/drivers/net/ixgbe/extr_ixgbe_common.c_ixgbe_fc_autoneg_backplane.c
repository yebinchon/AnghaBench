
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_ANLP1 ;
 int IXGBE_ANLP1_ASM_PAUSE ;
 int IXGBE_ANLP1_SYM_PAUSE ;
 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_ASM_PAUSE ;
 int IXGBE_AUTOC_SYM_PAUSE ;
 int IXGBE_ERR_FC_NOT_NEGOTIATED ;
 int IXGBE_LINKS ;
 int IXGBE_LINKS2 ;
 int IXGBE_LINKS2_AN_SUPPORTED ;
 int IXGBE_LINKS_KX_AN_COMP ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_mac_82599EB ;
 int ixgbe_negotiate_fc (struct ixgbe_hw*,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static s32 ixgbe_fc_autoneg_backplane(struct ixgbe_hw *hw)
{
 u32 links2, anlp1_reg, autoc_reg, links;
 s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;






 links = IXGBE_READ_REG(hw, IXGBE_LINKS);
 if ((links & IXGBE_LINKS_KX_AN_COMP) == 0)
  goto out;

 if (hw->mac.type == ixgbe_mac_82599EB) {
  links2 = IXGBE_READ_REG(hw, IXGBE_LINKS2);
  if ((links2 & IXGBE_LINKS2_AN_SUPPORTED) == 0)
   goto out;
 }




 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 anlp1_reg = IXGBE_READ_REG(hw, IXGBE_ANLP1);

 ret_val = ixgbe_negotiate_fc(hw, autoc_reg,
  anlp1_reg, IXGBE_AUTOC_SYM_PAUSE, IXGBE_AUTOC_ASM_PAUSE,
  IXGBE_ANLP1_SYM_PAUSE, IXGBE_ANLP1_ASM_PAUSE);

out:
 return ret_val;
}
