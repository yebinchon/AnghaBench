
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* get_cable_length ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {int polarity_correction; int is_mdix; void* remote_rx; void* local_rx; int cable_length; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int E1000_CABLE_LENGTH_UNDEFINED ;
 scalar_t__ E1000_ERR_CONFIG ;
 int IGP01E1000_PHY_PORT_STATUS ;
 int IGP01E1000_PSSR_MDIX ;
 int IGP01E1000_PSSR_SPEED_1000MBPS ;
 int IGP01E1000_PSSR_SPEED_MASK ;
 int LPA_1000LOCALRXOK ;
 int LPA_1000REMRXOK ;
 int MII_STAT1000 ;
 void* e1000_1000t_rx_status_not_ok ;
 void* e1000_1000t_rx_status_ok ;
 void* e1000_1000t_rx_status_undefined ;
 scalar_t__ e1000_check_polarity_igp (struct e1000_hw*) ;
 scalar_t__ e1000e_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;
 int e_dbg (char*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

s32 e1000e_get_phy_info_igp(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;
 bool link;

 ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  return ret_val;

 if (!link) {
  e_dbg("Phy info is only valid if link is up\n");
  return -E1000_ERR_CONFIG;
 }

 phy->polarity_correction = 1;

 ret_val = e1000_check_polarity_igp(hw);
 if (ret_val)
  return ret_val;

 ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_STATUS, &data);
 if (ret_val)
  return ret_val;

 phy->is_mdix = !!(data & IGP01E1000_PSSR_MDIX);

 if ((data & IGP01E1000_PSSR_SPEED_MASK) ==
     IGP01E1000_PSSR_SPEED_1000MBPS) {
  ret_val = phy->ops.get_cable_length(hw);
  if (ret_val)
   return ret_val;

  ret_val = e1e_rphy(hw, MII_STAT1000, &data);
  if (ret_val)
   return ret_val;

  phy->local_rx = (data & LPA_1000LOCALRXOK)
      ? e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;

  phy->remote_rx = (data & LPA_1000REMRXOK)
      ? e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;
 } else {
  phy->cable_length = E1000_CABLE_LENGTH_UNDEFINED;
  phy->local_rx = e1000_1000t_rx_status_undefined;
  phy->remote_rx = e1000_1000t_rx_status_undefined;
 }

 return ret_val;
}
