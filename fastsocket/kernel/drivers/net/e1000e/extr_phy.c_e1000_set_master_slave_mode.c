
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int original_ms_type; int ms_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int CTL1000_AS_MASTER ;
 int CTL1000_ENABLE_MASTER ;
 int MII_CTRL1000 ;



 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_set_master_slave_mode(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;


 ret_val = e1e_rphy(hw, MII_CTRL1000, &phy_data);
 if (ret_val)
  return ret_val;


 hw->phy.original_ms_type = (phy_data & CTL1000_ENABLE_MASTER) ?
     ((phy_data & CTL1000_AS_MASTER) ?
      129 : 128) : 130;

 switch (hw->phy.ms_type) {
 case 129:
  phy_data |= (CTL1000_ENABLE_MASTER | CTL1000_AS_MASTER);
  break;
 case 128:
  phy_data |= CTL1000_ENABLE_MASTER;
  phy_data &= ~(CTL1000_AS_MASTER);
  break;
 case 130:
  phy_data &= ~CTL1000_ENABLE_MASTER;

 default:
  break;
 }

 return e1e_wphy(hw, MII_CTRL1000, phy_data);
}
