
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; int pause_time; int low_water; int high_water; scalar_t__ send_xon; } ;
struct ixgb_hw {TYPE_1__ fc; } ;


 int ASSERT (int ) ;
 int CTRL0 ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int FCRTH ;
 int FCRTL ;
 int IXGB_CTRL0_CMDC ;
 int IXGB_CTRL0_RPE ;
 int IXGB_CTRL0_TPE ;
 int IXGB_FCRTL_XONE ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int PAP ;





__attribute__((used)) static bool
ixgb_setup_fc(struct ixgb_hw *hw)
{
 u32 ctrl_reg;
 u32 pap_reg = 0;
 bool status = 1;

 DEBUGFUNC("ixgb_setup_fc");


 ctrl_reg = IXGB_READ_REG(hw, CTRL0);


 ctrl_reg &= ~(IXGB_CTRL0_RPE | IXGB_CTRL0_TPE);
 switch (hw->fc.type) {
 case 130:

  ctrl_reg |= (IXGB_CTRL0_CMDC);
  break;
 case 129:



  ctrl_reg |= (IXGB_CTRL0_RPE);
  break;
 case 128:



  ctrl_reg |= (IXGB_CTRL0_TPE);
  pap_reg = hw->fc.pause_time;
  break;
 case 131:



  ctrl_reg |= (IXGB_CTRL0_RPE | IXGB_CTRL0_TPE);
  pap_reg = hw->fc.pause_time;
  break;
 default:

  DEBUGOUT("Flow control param set incorrectly\n");
  ASSERT(0);
  break;
 }


 IXGB_WRITE_REG(hw, CTRL0, ctrl_reg);

 if (pap_reg != 0)
  IXGB_WRITE_REG(hw, PAP, pap_reg);







 if (!(hw->fc.type & 128)) {
  IXGB_WRITE_REG(hw, FCRTL, 0);
  IXGB_WRITE_REG(hw, FCRTH, 0);
 } else {



  if (hw->fc.send_xon) {
   IXGB_WRITE_REG(hw, FCRTL,
    (hw->fc.low_water | IXGB_FCRTL_XONE));
  } else {
   IXGB_WRITE_REG(hw, FCRTL, hw->fc.low_water);
  }
  IXGB_WRITE_REG(hw, FCRTH, hw->fc.high_water);
 }
 return (status);
}
