
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int low_water; int* high_water; int pause_time; int current_mode; } ;
struct ixgbe_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int IXGBE_ERR_CONFIG ;
 int IXGBE_ERR_INVALID_LINK_SETTINGS ;
 int IXGBE_FCCFG ;
 int IXGBE_FCCFG_TFCE_802_3X ;
 int IXGBE_FCCFG_TFCE_PRIORITY ;
 int IXGBE_FCRTH_82599 (int) ;
 int IXGBE_FCRTH_FCEN ;
 int IXGBE_FCRTL_82599 (int) ;
 int IXGBE_FCRTL_XONE ;
 int IXGBE_FCRTV ;
 int IXGBE_FCTTV (int) ;
 int IXGBE_MFLCN ;
 int IXGBE_MFLCN_DPF ;
 int IXGBE_MFLCN_RFCE ;
 int IXGBE_MFLCN_RPFCE_MASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int MAX_TRAFFIC_CLASS ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_fc_autoneg (struct ixgbe_hw*) ;





s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
{
 s32 ret_val = 0;
 u32 mflcn_reg, fccfg_reg;
 u32 reg;
 u32 fcrtl, fcrth;
 int i;






 if (!hw->fc.low_water ||
     !hw->fc.high_water[0] ||
     !hw->fc.pause_time) {
  hw_dbg(hw, "Invalid water mark configuration\n");
  ret_val = IXGBE_ERR_INVALID_LINK_SETTINGS;
  goto out;
 }


 ixgbe_fc_autoneg(hw);


 mflcn_reg = IXGBE_READ_REG(hw, IXGBE_MFLCN);
 mflcn_reg &= ~(IXGBE_MFLCN_RPFCE_MASK | IXGBE_MFLCN_RFCE);

 fccfg_reg = IXGBE_READ_REG(hw, IXGBE_FCCFG);
 fccfg_reg &= ~(IXGBE_FCCFG_TFCE_802_3X | IXGBE_FCCFG_TFCE_PRIORITY);
 switch (hw->fc.current_mode) {
 case 130:




  break;
 case 129:
  mflcn_reg |= IXGBE_MFLCN_RFCE;
  break;
 case 128:




  fccfg_reg |= IXGBE_FCCFG_TFCE_802_3X;
  break;
 case 131:

  mflcn_reg |= IXGBE_MFLCN_RFCE;
  fccfg_reg |= IXGBE_FCCFG_TFCE_802_3X;
  break;
 default:
  hw_dbg(hw, "Flow control param set incorrectly\n");
  ret_val = IXGBE_ERR_CONFIG;
  goto out;
  break;
 }


 mflcn_reg |= IXGBE_MFLCN_DPF;
 IXGBE_WRITE_REG(hw, IXGBE_MFLCN, mflcn_reg);
 IXGBE_WRITE_REG(hw, IXGBE_FCCFG, fccfg_reg);

 fcrtl = (hw->fc.low_water << 10) | IXGBE_FCRTL_XONE;


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  if ((hw->fc.current_mode & 128) &&
      hw->fc.high_water[i]) {
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL_82599(i), fcrtl);
   fcrth = (hw->fc.high_water[i] << 10) | IXGBE_FCRTH_FCEN;
  } else {
   IXGBE_WRITE_REG(hw, IXGBE_FCRTL_82599(i), 0);






   fcrth = IXGBE_READ_REG(hw, IXGBE_RXPBSIZE(i)) - 32;
  }

  IXGBE_WRITE_REG(hw, IXGBE_FCRTH_82599(i), fcrth);
 }


 reg = hw->fc.pause_time * 0x00010001;
 for (i = 0; i < (MAX_TRAFFIC_CLASS / 2); i++)
  IXGBE_WRITE_REG(hw, IXGBE_FCTTV(i), reg);

 IXGBE_WRITE_REG(hw, IXGBE_FCRTV, hw->fc.pause_time / 2);

out:
 return ret_val;
}
