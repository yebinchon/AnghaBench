
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int uint8_t ;


 int BAT_ADDR_MFR_TYPE ;
 int EC_BAT_EEPROM ;
 int POWER_SUPPLY_TECHNOLOGY_LiFe ;
 int POWER_SUPPLY_TECHNOLOGY_NiMH ;
 int POWER_SUPPLY_TECHNOLOGY_UNKNOWN ;
 int olpc_ec_cmd (int ,int*,int,int*,int) ;

__attribute__((used)) static int olpc_bat_get_tech(union power_supply_propval *val)
{
 uint8_t ec_byte;
 int ret;

 ec_byte = BAT_ADDR_MFR_TYPE;
 ret = olpc_ec_cmd(EC_BAT_EEPROM, &ec_byte, 1, &ec_byte, 1);
 if (ret)
  return ret;

 switch (ec_byte & 0xf) {
 case 1:
  val->intval = POWER_SUPPLY_TECHNOLOGY_NiMH;
  break;
 case 2:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LiFe;
  break;
 default:
  val->intval = POWER_SUPPLY_TECHNOLOGY_UNKNOWN;
  break;
 }

 return ret;
}
