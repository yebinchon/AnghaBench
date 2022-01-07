
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* acquire ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;int (* commit ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int type; scalar_t__ media_type; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SPD_SEL ;
 int E1000_STATUS_FD ;
 int FLAG_IS_ICH ;
 int GG82563_PHY_KMRN_MODE_CTRL ;
 int I82577_PHY_LBK_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 int MII_BMCR ;
 int PHY_REG (int,int) ;
 int STATUS ;
 int e1000_configure_k1_ich8lan (struct e1000_hw*,int) ;
 scalar_t__ e1000_media_type_copper ;




 int e1000_phy_disable_receiver (struct e1000_adapter*) ;

 int e1000_phy_ife ;

 int e1e_flush () ;
 int e1e_rphy (struct e1000_hw*,int ,int*) ;
 int e1e_wphy (struct e1000_hw*,int ,int) ;
 int e_err (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_reg = 0;
 u16 phy_reg = 0;
 s32 ret_val = 0;

 hw->mac.autoneg = 0;

 if (hw->phy.type == e1000_phy_ife) {

  e1e_wphy(hw, MII_BMCR, 0x6100);


  ctrl_reg = er32(CTRL);
  ctrl_reg &= ~E1000_CTRL_SPD_SEL;
  ctrl_reg |= (E1000_CTRL_FRCSPD |
        E1000_CTRL_FRCDPX |
        E1000_CTRL_SPD_100 |
        E1000_CTRL_FD);

  ew32(CTRL, ctrl_reg);
  e1e_flush();
  usleep_range(500, 1000);

  return 0;
 }


 switch (hw->phy.type) {
 case 128:

  e1e_wphy(hw, M88E1000_PHY_SPEC_CTRL, 0x0808);

  e1e_wphy(hw, MII_BMCR, 0x9140);

  e1e_wphy(hw, MII_BMCR, 0x8140);
  break;
 case 129:
  e1e_wphy(hw, GG82563_PHY_KMRN_MODE_CTRL, 0x1CC);
  break;
 case 130:

  e1e_rphy(hw, PHY_REG(2, 21), &phy_reg);
  phy_reg &= ~0x0007;
  phy_reg |= 0x006;
  e1e_wphy(hw, PHY_REG(2, 21), phy_reg);

  hw->phy.ops.commit(hw);
  usleep_range(1000, 2000);

  e1e_rphy(hw, PHY_REG(769, 16), &phy_reg);
  e1e_wphy(hw, PHY_REG(769, 16), phy_reg | 0x000C);

  e1e_rphy(hw, PHY_REG(776, 16), &phy_reg);
  e1e_wphy(hw, PHY_REG(776, 16), phy_reg | 0x0040);

  e1e_rphy(hw, PHY_REG(769, 16), &phy_reg);
  e1e_wphy(hw, PHY_REG(769, 16), phy_reg | 0x0040);

  e1e_rphy(hw, PHY_REG(769, 20), &phy_reg);
  e1e_wphy(hw, PHY_REG(769, 20), phy_reg | 0x0400);
  break;
 case 133:
 case 132:

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val) {
   e_err("Cannot setup 1Gbps loopback.\n");
   return ret_val;
  }
  e1000_configure_k1_ich8lan(hw, 0);
  hw->phy.ops.release(hw);
  break;
 case 131:

  e1e_rphy(hw, PHY_REG(0, 21), &phy_reg);
  e1e_wphy(hw, PHY_REG(0, 21), phy_reg & ~(1 << 3));

  e1e_rphy(hw, PHY_REG(776, 18), &phy_reg);
  e1e_wphy(hw, PHY_REG(776, 18), phy_reg | 1);

  e1e_wphy(hw, I82577_PHY_LBK_CTRL, 0x8001);
  break;
 default:
  break;
 }


 e1e_wphy(hw, MII_BMCR, 0x4140);
 msleep(250);


 ctrl_reg = er32(CTRL);
 ctrl_reg &= ~E1000_CTRL_SPD_SEL;
 ctrl_reg |= (E1000_CTRL_FRCSPD |
       E1000_CTRL_FRCDPX |
       E1000_CTRL_SPD_1000 |
       E1000_CTRL_FD);

 if (adapter->flags & FLAG_IS_ICH)
  ctrl_reg |= E1000_CTRL_SLU;

 if (hw->phy.media_type == e1000_media_type_copper &&
     hw->phy.type == 128) {
  ctrl_reg |= E1000_CTRL_ILOS;
 } else {



  if ((er32(STATUS) & E1000_STATUS_FD) == 0)
   ctrl_reg |= (E1000_CTRL_ILOS | E1000_CTRL_SLU);
 }

 ew32(CTRL, ctrl_reg);




 if (hw->phy.type == 128)
  e1000_phy_disable_receiver(adapter);

 usleep_range(500, 1000);

 return 0;
}
