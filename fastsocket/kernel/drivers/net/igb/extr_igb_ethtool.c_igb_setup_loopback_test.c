
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {scalar_t__ device_id; TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_CONNSW ;
 int E1000_CONNSW_ENRGSRC ;
 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_LINK_MODE_MASK ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_LRST ;
 int E1000_CTRL_RFCE ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_TFCE ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_BACKPLANE ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_SERDES ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_SFP ;
 scalar_t__ E1000_DEV_ID_DH89XXCC_SGMII ;
 int E1000_ENABLE_SERDES_LOOPBACK ;
 int E1000_MPHY_ADDR_CTL ;
 int E1000_MPHY_ADDR_CTL_OFFSET_MASK ;
 int E1000_MPHY_DATA ;
 int E1000_MPHY_PCS_CLK_REG_DIGINELBEN ;
 int E1000_MPHY_PCS_CLK_REG_OFFSET ;
 int E1000_PCS_CFG0 ;
 int E1000_PCS_CFG_IGN_SD ;
 int E1000_PCS_LCTL ;
 int E1000_PCS_LCTL_AN_ENABLE ;
 int E1000_PCS_LCTL_FDV_FULL ;
 int E1000_PCS_LCTL_FLV_LINK_UP ;
 int E1000_PCS_LCTL_FORCE_LINK ;
 int E1000_PCS_LCTL_FSD ;
 int E1000_PCS_LCTL_FSV_1000 ;
 int E1000_RCTL ;
 int E1000_RCTL_LBM_TCVR ;
 int E1000_SCTL ;
 scalar_t__ e1000_82580 ;
 int igb_set_phy_loopback (struct igb_adapter*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static int igb_setup_loopback_test(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 reg;

 reg = rd32(E1000_CTRL_EXT);


 if (reg & E1000_CTRL_EXT_LINK_MODE_MASK) {
  if ((hw->device_id == E1000_DEV_ID_DH89XXCC_SGMII) ||
  (hw->device_id == E1000_DEV_ID_DH89XXCC_SERDES) ||
  (hw->device_id == E1000_DEV_ID_DH89XXCC_BACKPLANE) ||
  (hw->device_id == E1000_DEV_ID_DH89XXCC_SFP)) {


   reg = rd32(E1000_MPHY_ADDR_CTL);
   reg = (reg & E1000_MPHY_ADDR_CTL_OFFSET_MASK) |
   E1000_MPHY_PCS_CLK_REG_OFFSET;
   wr32(E1000_MPHY_ADDR_CTL, reg);

   reg = rd32(E1000_MPHY_DATA);
   reg |= E1000_MPHY_PCS_CLK_REG_DIGINELBEN;
   wr32(E1000_MPHY_DATA, reg);
  }

  reg = rd32(E1000_RCTL);
  reg |= E1000_RCTL_LBM_TCVR;
  wr32(E1000_RCTL, reg);

  wr32(E1000_SCTL, E1000_ENABLE_SERDES_LOOPBACK);

  reg = rd32(E1000_CTRL);
  reg &= ~(E1000_CTRL_RFCE |
    E1000_CTRL_TFCE |
    E1000_CTRL_LRST);
  reg |= E1000_CTRL_SLU |
         E1000_CTRL_FD;
  wr32(E1000_CTRL, reg);


  reg = rd32(E1000_CONNSW);
  reg &= ~E1000_CONNSW_ENRGSRC;
  wr32(E1000_CONNSW, reg);




  if (hw->mac.type >= e1000_82580) {
   reg = rd32(E1000_PCS_CFG0);
   reg |= E1000_PCS_CFG_IGN_SD;
   wr32(E1000_PCS_CFG0, reg);
  }


  reg = rd32(E1000_PCS_LCTL);
  reg &= ~E1000_PCS_LCTL_AN_ENABLE;
  reg |= E1000_PCS_LCTL_FLV_LINK_UP |
         E1000_PCS_LCTL_FSV_1000 |
         E1000_PCS_LCTL_FDV_FULL |
         E1000_PCS_LCTL_FSD |
         E1000_PCS_LCTL_FORCE_LINK;
  wr32(E1000_PCS_LCTL, reg);

  return 0;
 }

 return igb_set_phy_loopback(adapter);
}
