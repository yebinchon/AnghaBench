
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2760_device_info {int charge_status; int full_counter; int current_uA; int bat; int full_active_uAh; int dev; } ;


 void* POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int dev_notice (int ,char*) ;
 int ds2760_battery_read_status (struct ds2760_device_info*) ;
 int ds2760_battery_set_current_accum (struct ds2760_device_info*,int ) ;
 scalar_t__ power_supply_am_i_supplied (int *) ;
 int power_supply_changed (int *) ;

__attribute__((used)) static void ds2760_battery_update_status(struct ds2760_device_info *di)
{
 int old_charge_status = di->charge_status;

 ds2760_battery_read_status(di);

 if (di->charge_status == POWER_SUPPLY_STATUS_UNKNOWN)
  di->full_counter = 0;

 if (power_supply_am_i_supplied(&di->bat)) {
  if (di->current_uA > 10000) {
   di->charge_status = POWER_SUPPLY_STATUS_CHARGING;
   di->full_counter = 0;
  } else if (di->current_uA < -5000) {
   if (di->charge_status != POWER_SUPPLY_STATUS_NOT_CHARGING)
    dev_notice(di->dev, "not enough power to "
        "charge\n");
   di->charge_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
   di->full_counter = 0;
  } else if (di->current_uA < 10000 &&
       di->charge_status != POWER_SUPPLY_STATUS_FULL) {





   di->full_counter++;

   if (di->full_counter < 2) {
    di->charge_status = POWER_SUPPLY_STATUS_CHARGING;
   } else {
    di->charge_status = POWER_SUPPLY_STATUS_FULL;
    ds2760_battery_set_current_accum(di,
      di->full_active_uAh);
   }
  }
 } else {
  di->charge_status = POWER_SUPPLY_STATUS_DISCHARGING;
  di->full_counter = 0;
 }

 if (di->charge_status != old_charge_status)
  power_supply_changed(&di->bat);
}
