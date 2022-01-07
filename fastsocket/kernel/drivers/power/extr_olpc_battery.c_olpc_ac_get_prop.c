
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int uint8_t ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BAT_STAT_AC ;
 int EC_BAT_STATUS ;
 int EINVAL ;

 int olpc_ec_cmd (int ,int *,int ,int*,int) ;

__attribute__((used)) static int olpc_ac_get_prop(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 int ret = 0;
 uint8_t status;

 switch (psp) {
 case 128:
  ret = olpc_ec_cmd(EC_BAT_STATUS, ((void*)0), 0, &status, 1);
  if (ret)
   return ret;

  val->intval = !!(status & BAT_STAT_AC);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
