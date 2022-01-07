
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {char* strval; } ;
typedef int uint8_t ;


 int BAT_ADDR_MFR_TYPE ;
 int EC_BAT_EEPROM ;
 int olpc_ec_cmd (int ,int*,int,int*,int) ;

__attribute__((used)) static int olpc_bat_get_mfr(union power_supply_propval *val)
{
 uint8_t ec_byte;
 int ret;

 ec_byte = BAT_ADDR_MFR_TYPE;
 ret = olpc_ec_cmd(EC_BAT_EEPROM, &ec_byte, 1, &ec_byte, 1);
 if (ret)
  return ret;

 switch (ec_byte >> 4) {
 case 1:
  val->strval = "Gold Peak";
  break;
 case 2:
  val->strval = "BYD";
  break;
 default:
  val->strval = "Unknown";
  break;
 }

 return ret;
}
