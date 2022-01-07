
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* vcharge_max; void* vcharge_min; void* vbat_charge_restart; void* vbat_charge_stop; void* vbat_charge_start; void* vbat_crit; void* vbat_low; int tbat_restart; int tbat_high; int tbat_low; } ;
struct da9030_charger {TYPE_1__ thresholds; } ;
struct da9030_battery_info {int vcharge_max; int vcharge_min; int vbat_charge_restart; int vbat_charge_stop; int vbat_charge_start; int vbat_crit; int vbat_low; int tbat_restart; int tbat_high; int tbat_low; } ;


 void* da9030_millivolt_to_reg (int ) ;

__attribute__((used)) static void da9030_battery_convert_thresholds(struct da9030_charger *charger,
           struct da9030_battery_info *pdata)
{
 charger->thresholds.tbat_low = pdata->tbat_low;
 charger->thresholds.tbat_high = pdata->tbat_high;
 charger->thresholds.tbat_restart = pdata->tbat_restart;

 charger->thresholds.vbat_low =
  da9030_millivolt_to_reg(pdata->vbat_low);
 charger->thresholds.vbat_crit =
  da9030_millivolt_to_reg(pdata->vbat_crit);
 charger->thresholds.vbat_charge_start =
  da9030_millivolt_to_reg(pdata->vbat_charge_start);
 charger->thresholds.vbat_charge_stop =
  da9030_millivolt_to_reg(pdata->vbat_charge_stop);
 charger->thresholds.vbat_charge_restart =
  da9030_millivolt_to_reg(pdata->vbat_charge_restart);

 charger->thresholds.vcharge_min =
  da9030_millivolt_to_reg(pdata->vcharge_min);
 charger->thresholds.vcharge_max =
  da9030_millivolt_to_reg(pdata->vcharge_max);
}
