
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ has_fwsm; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_FACTPS_MNGCG ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_FWSM_MODE_SHIFT ;
 int E1000_MANC_ASF_EN ;
 int E1000_MANC_RCV_TCO_EN ;
 int E1000_MANC_SMBUS_EN ;
 int E1000_NVM_INIT_CTRL2_MNGM ;
 int FACTPS ;
 int FWSM ;
 int MANC ;
 int NVM_INIT_CONTROL2_REG ;
 scalar_t__ e1000_82574 ;
 scalar_t__ e1000_82583 ;
 int e1000_mng_mode_pt ;
 int e1000_read_nvm (struct e1000_hw*,int ,int,int*) ;
 int er32 (int ) ;

bool e1000e_enable_mng_pass_thru(struct e1000_hw *hw)
{
 u32 manc;
 u32 fwsm, factps;

 manc = er32(MANC);

 if (!(manc & E1000_MANC_RCV_TCO_EN))
  return 0;

 if (hw->mac.has_fwsm) {
  fwsm = er32(FWSM);
  factps = er32(FACTPS);

  if (!(factps & E1000_FACTPS_MNGCG) &&
      ((fwsm & E1000_FWSM_MODE_MASK) ==
       (e1000_mng_mode_pt << E1000_FWSM_MODE_SHIFT)))
   return 1;
 } else if ((hw->mac.type == e1000_82574) ||
     (hw->mac.type == e1000_82583)) {
  u16 data;

  factps = er32(FACTPS);
  e1000_read_nvm(hw, NVM_INIT_CONTROL2_REG, 1, &data);

  if (!(factps & E1000_FACTPS_MNGCG) &&
      ((data & E1000_NVM_INIT_CTRL2_MNGM) ==
       (e1000_mng_mode_pt << 13)))
   return 1;
 } else if ((manc & E1000_MANC_SMBUS_EN) &&
     !(manc & E1000_MANC_ASF_EN)) {
  return 1;
 }

 return 0;
}
