
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max17040_chip {scalar_t__ soc; int status; TYPE_1__* pdata; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* charger_enable ) () ;scalar_t__ (* charger_online ) () ;} ;


 scalar_t__ MAX17040_BATTERY_FULL ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 struct max17040_chip* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;

__attribute__((used)) static void max17040_get_status(struct i2c_client *client)
{
 struct max17040_chip *chip = i2c_get_clientdata(client);

 if (!chip->pdata->charger_online || !chip->pdata->charger_enable) {
  chip->status = POWER_SUPPLY_STATUS_UNKNOWN;
  return;
 }

 if (chip->pdata->charger_online()) {
  if (chip->pdata->charger_enable())
   chip->status = POWER_SUPPLY_STATUS_CHARGING;
  else
   chip->status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {
  chip->status = POWER_SUPPLY_STATUS_DISCHARGING;
 }

 if (chip->soc > MAX17040_BATTERY_FULL)
  chip->status = POWER_SUPPLY_STATUS_FULL;
}
