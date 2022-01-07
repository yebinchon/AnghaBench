
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct e1000_phy_info {scalar_t__ smart_speed; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int IGP02E1000_PHY_POWER_MGMT ;
 int IGP02E1000_PM_D0_LPLU ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 igb_set_d0_lplu_state_82575(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 ret_val = phy->ops.read_reg(hw, IGP02E1000_PHY_POWER_MGMT, &data);
 if (ret_val)
  goto out;

 if (active) {
  data |= IGP02E1000_PM_D0_LPLU;
  ret_val = phy->ops.write_reg(hw, IGP02E1000_PHY_POWER_MGMT,
       data);
  if (ret_val)
   goto out;


  ret_val = phy->ops.read_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
      &data);
  data &= ~IGP01E1000_PSCFR_SMART_SPEED;
  ret_val = phy->ops.write_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
       data);
  if (ret_val)
   goto out;
 } else {
  data &= ~IGP02E1000_PM_D0_LPLU;
  ret_val = phy->ops.write_reg(hw, IGP02E1000_PHY_POWER_MGMT,
       data);





  if (phy->smart_speed == e1000_smart_speed_on) {
   ret_val = phy->ops.read_reg(hw,
     IGP01E1000_PHY_PORT_CONFIG, &data);
   if (ret_val)
    goto out;

   data |= IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
     IGP01E1000_PHY_PORT_CONFIG, data);
   if (ret_val)
    goto out;
  } else if (phy->smart_speed == e1000_smart_speed_off) {
   ret_val = phy->ops.read_reg(hw,
     IGP01E1000_PHY_PORT_CONFIG, &data);
   if (ret_val)
    goto out;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
     IGP01E1000_PHY_PORT_CONFIG, data);
   if (ret_val)
    goto out;
  }
 }

out:
 return ret_val;
}
