
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int BMCR_LOOPBACK ;
 int BM_CS_STATUS ;
 int BM_CS_STATUS_LINK_UP ;
 int BM_CS_STATUS_RESOLVED ;
 int BM_CS_STATUS_SPEED_1000 ;
 int BM_CS_STATUS_SPEED_MASK ;
 int HV_MUX_DATA_CTRL ;
 int HV_MUX_DATA_CTRL_FORCE_SPEED ;
 int HV_MUX_DATA_CTRL_GEN_TO_MAC ;
 int MII_BMCR ;
 scalar_t__ e1000_phy_82578 ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int) ;
 int msleep (int) ;

s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 data;

 if (hw->phy.type != e1000_phy_82578)
  return 0;


 e1e_rphy(hw, MII_BMCR, &data);
 if (data & BMCR_LOOPBACK)
  return 0;


 ret_val = e1e_rphy(hw, BM_CS_STATUS, &data);
 if (ret_val)
  return ret_val;

 data &= (BM_CS_STATUS_LINK_UP | BM_CS_STATUS_RESOLVED |
   BM_CS_STATUS_SPEED_MASK);

 if (data != (BM_CS_STATUS_LINK_UP | BM_CS_STATUS_RESOLVED |
       BM_CS_STATUS_SPEED_1000))
  return 0;

 msleep(200);


 ret_val = e1e_wphy(hw, HV_MUX_DATA_CTRL,
      (HV_MUX_DATA_CTRL_GEN_TO_MAC |
       HV_MUX_DATA_CTRL_FORCE_SPEED));
 if (ret_val)
  return ret_val;

 return e1e_wphy(hw, HV_MUX_DATA_CTRL, HV_MUX_DATA_CTRL_GEN_TO_MAC);
}
