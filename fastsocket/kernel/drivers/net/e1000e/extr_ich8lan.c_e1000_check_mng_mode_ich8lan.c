
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_FWSM_MODE_MASK ;
 int E1000_FWSM_MODE_SHIFT ;
 int E1000_ICH_FWSM_FW_VALID ;
 int E1000_ICH_MNG_IAMT_MODE ;
 int FWSM ;
 int er32 (int ) ;

__attribute__((used)) static bool e1000_check_mng_mode_ich8lan(struct e1000_hw *hw)
{
 u32 fwsm;

 fwsm = er32(FWSM);
 return ((fwsm & E1000_ICH_FWSM_FW_VALID) &&
  ((fwsm & E1000_FWSM_MODE_MASK) ==
   (E1000_ICH_MNG_IAMT_MODE << E1000_FWSM_MODE_SHIFT)));
}
