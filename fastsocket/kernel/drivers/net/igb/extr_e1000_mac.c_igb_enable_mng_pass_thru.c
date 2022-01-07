
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ arc_subsystem_valid; int asf_firmware_present; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_FACTPS ;
 int E1000_FACTPS_MNGCG ;
 int E1000_FWSM ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_FWSM_MODE_SHIFT ;
 int E1000_MANC ;
 int E1000_MANC_ASF_EN ;
 int E1000_MANC_RCV_TCO_EN ;
 int E1000_MANC_SMBUS_EN ;
 int e1000_mng_mode_pt ;
 int rd32 (int ) ;

bool igb_enable_mng_pass_thru(struct e1000_hw *hw)
{
 u32 manc;
 u32 fwsm, factps;
 bool ret_val = 0;

 if (!hw->mac.asf_firmware_present)
  goto out;

 manc = rd32(E1000_MANC);

 if (!(manc & E1000_MANC_RCV_TCO_EN))
  goto out;

 if (hw->mac.arc_subsystem_valid) {
  fwsm = rd32(E1000_FWSM);
  factps = rd32(E1000_FACTPS);

  if (!(factps & E1000_FACTPS_MNGCG) &&
      ((fwsm & E1000_FWSM_MODE_MASK) ==
       (e1000_mng_mode_pt << E1000_FWSM_MODE_SHIFT))) {
   ret_val = 1;
   goto out;
  }
 } else {
  if ((manc & E1000_MANC_SMBUS_EN) &&
      !(manc & E1000_MANC_ASF_EN)) {
   ret_val = 1;
   goto out;
  }
 }

out:
 return ret_val;
}
