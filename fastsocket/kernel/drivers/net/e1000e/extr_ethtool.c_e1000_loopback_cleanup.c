
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* commit ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; int type; int media_type; } ;
struct TYPE_4__ {int type; int autoneg; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {int tx_fifo_head; struct e1000_hw hw; } ;


 int BMCR_LOOPBACK ;
 int CTRL_EXT ;
 int E1000_RCTL_LBM_MAC ;
 int E1000_RCTL_LBM_TCVR ;
 int E1000_SCTL_DISABLE_SERDES_LOOPBACK ;
 int GG82563_PHY_KMRN_MODE_CTRL ;
 int MII_BMCR ;
 int RCTL ;
 int SCTL ;



 int e1000_media_type_fiber ;
 int e1000_media_type_internal_serdes ;
 int e1000_phy_gg82563 ;
 int e1e_flush () ;
 int e1e_rphy (struct e1000_hw*,int ,int*) ;
 int e1e_wphy (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int stub1 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;
 u16 phy_reg;

 rctl = er32(RCTL);
 rctl &= ~(E1000_RCTL_LBM_TCVR | E1000_RCTL_LBM_MAC);
 ew32(RCTL, rctl);

 switch (hw->mac.type) {
 case 130:
  if (hw->phy.media_type == e1000_media_type_fiber ||
      hw->phy.media_type == e1000_media_type_internal_serdes) {

   ew32(CTRL_EXT, adapter->tx_fifo_head);
   adapter->tx_fifo_head = 0;
  }

 case 129:
 case 128:
  if (hw->phy.media_type == e1000_media_type_fiber ||
      hw->phy.media_type == e1000_media_type_internal_serdes) {
   ew32(SCTL, E1000_SCTL_DISABLE_SERDES_LOOPBACK);
   e1e_flush();
   usleep_range(10000, 20000);
   break;
  }

 default:
  hw->mac.autoneg = 1;
  if (hw->phy.type == e1000_phy_gg82563)
   e1e_wphy(hw, GG82563_PHY_KMRN_MODE_CTRL, 0x180);
  e1e_rphy(hw, MII_BMCR, &phy_reg);
  if (phy_reg & BMCR_LOOPBACK) {
   phy_reg &= ~BMCR_LOOPBACK;
   e1e_wphy(hw, MII_BMCR, phy_reg);
   if (hw->phy.ops.commit)
    hw->phy.ops.commit(hw);
  }
  break;
 }
}
