
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {void* intval; } ;
typedef int uint8_t ;
struct TYPE_2__ {int ecver; } ;


 int BAT_STAT_AC ;
 int BAT_STAT_CHARGING ;
 int BAT_STAT_DISCHARGING ;
 int BAT_STAT_FULL ;
 int BAT_STAT_TRICKLE ;
 void* POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_DISCHARGING ;
 void* POWER_SUPPLY_STATUS_FULL ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 TYPE_1__ olpc_platform_info ;

__attribute__((used)) static int olpc_bat_get_status(union power_supply_propval *val, uint8_t ec_byte)
{
 if (olpc_platform_info.ecver > 0x44) {
  if (ec_byte & (BAT_STAT_CHARGING | BAT_STAT_TRICKLE))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (ec_byte & BAT_STAT_DISCHARGING)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (ec_byte & BAT_STAT_FULL)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {

  if (!(ec_byte & BAT_STAT_AC))
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (ec_byte & BAT_STAT_FULL)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
 }

 return 0;
}
