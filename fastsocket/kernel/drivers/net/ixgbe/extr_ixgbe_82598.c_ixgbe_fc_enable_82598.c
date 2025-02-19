
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int low_water; int* high_water; int pause_time; int requested_mode; int current_mode; } ;
struct TYPE_4__ {int (* check_link ) (struct ixgbe_hw*,scalar_t__*,int*,int) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ fc; TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_CONFIG ;
 int IXGBE_ERR_INVALID_LINK_SETTINGS ;
 int IXGBE_FCRTH (int) ;
 int IXGBE_FCRTH_FCEN ;
 int IXGBE_FCRTL (int) ;
 int IXGBE_FCRTL_XONE ;
 int IXGBE_FCRTV ;
 int IXGBE_FCTRL ;
 scalar_t__ IXGBE_FCTRL_DPF ;
 scalar_t__ IXGBE_FCTRL_RFCE ;
 scalar_t__ IXGBE_FCTRL_RPFCE ;
 int IXGBE_FCTTV (int) ;
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RMCS ;
 scalar_t__ IXGBE_RMCS_TFCE_802_3X ;
 scalar_t__ IXGBE_RMCS_TFCE_PRIORITY ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int MAX_TRAFFIC_CLASS ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_fc_autoneg (struct ixgbe_hw*) ;




 int stub1 (struct ixgbe_hw*,scalar_t__*,int*,int) ;

__attribute__((used)) static s32 ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
{
 s32 ret_val = 0;
 u32 fctrl_reg;
 u32 rmcs_reg;
 u32 reg;
 u32 fcrtl, fcrth;
 u32 link_speed = 0;
 int i;
 bool link_up;






 if (!hw->fc.low_water ||
     !hw->fc.high_water[0] ||
     !hw->fc.pause_time) {
  hw_dbg(hw, "Invalid water mark configuration\n");
  ret_val = IXGBE_ERR_INVALID_LINK_SETTINGS;
  goto out;
 }






 hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);
 if (link_up && link_speed == IXGBE_LINK_SPEED_1GB_FULL) {
  switch (hw->fc.requested_mode) {
  case 131:
   hw->fc.requested_mode = 128;
   break;
  case 129:
   hw->fc.requested_mode = 130;
   break;
  default:

   break;
  }
 }


 ixgbe_fc_autoneg(hw);


 fctrl_reg = IXGBE_READ_REG(hw, IXGBE_FCTRL);
 fctrl_reg &= ~(IXGBE_FCTRL_RFCE | IXGBE_FCTRL_RPFCE);

 rmcs_reg = IXGBE_READ_REG(hw, IXGBE_RMCS);
 rmcs_reg &= ~(IXGBE_RMCS_TFCE_PRIORITY | IXGBE_RMCS_TFCE_802_3X);
 switch (hw->fc.current_mode) {
 case 130:




  break;
 case 129:
  fctrl_reg |= IXGBE_FCTRL_RFCE;
  break;
 case 128:




  rmcs_reg |= IXGBE_RMCS_TFCE_802_3X;
  break;
 case 131:

  fctrl_reg |= IXGBE_FCTRL_RFCE;
  rmcs_reg |= IXGBE_RMCS_TFCE_802_3X;
  break;
 default:
  hw_dbg(hw, "Flow control param set incorrectly\n");
  ret_val = IXGBE_ERR_CONFIG;
  goto out;
  break;
 }


 fctrl_reg |= IXGBE_FCTRL_DPF;
 IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl_reg);
 IXGBE_WRITE_REG(hw, IXGBE_RMCS, rmcs_reg);

 fcrtl = (hw->fc.low_water << 10) | IXGBE_FCRTL_XONE;


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  if ((hw->fc.current_mode & 128) &&
      hw->fc.high_water[i]) {
   fcrth = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL(i), fcrtl);
   IXGBE_WRITE_REG(hw, IXGBE_FCRTH(i), fcrth);
  } else {
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL(i), 0);
   IXGBE_WRITE_REG(hw, IXGBE_FCRTH(i), 0);
  }

 }


 reg = hw->fc.pause_time * 0x00010001;
 for (i = 0; i < (MAX_TRAFFIC_CLASS / 2); i++)
  IXGBE_WRITE_REG(hw, IXGBE_FCTTV(i), reg);


 IXGBE_WRITE_REG(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

out:
 return ret_val;
}
