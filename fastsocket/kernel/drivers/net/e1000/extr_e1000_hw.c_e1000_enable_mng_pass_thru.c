
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ asf_firmware_present; } ;


 int E1000_MANC_ASF_EN ;
 int E1000_MANC_EN_MAC_ADDR_FILTER ;
 int E1000_MANC_RCV_TCO_EN ;
 int E1000_MANC_SMBUS_EN ;
 int MANC ;
 int er32 (int ) ;

u32 e1000_enable_mng_pass_thru(struct e1000_hw *hw)
{
 u32 manc;

 if (hw->asf_firmware_present) {
  manc = er32(MANC);

  if (!(manc & E1000_MANC_RCV_TCO_EN) ||
      !(manc & E1000_MANC_EN_MAC_ADDR_FILTER))
   return 0;
  if ((manc & E1000_MANC_SMBUS_EN) && !(manc & E1000_MANC_ASF_EN))
   return 1;
 }
 return 0;
}
