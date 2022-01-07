
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vbat_charge_start; scalar_t__ vbat_charge_stop; scalar_t__ vbat_charge_restart; scalar_t__ vbat_low; scalar_t__ vcharge_max; scalar_t__ vcharge_min; scalar_t__ tbat_high; scalar_t__ tbat_low; } ;
struct TYPE_3__ {scalar_t__ vbat_res; scalar_t__ vchmax_res; scalar_t__ vchmin_res; scalar_t__ tbat_res; } ;
struct da9030_charger {TYPE_2__ thresholds; TYPE_1__ adc; int master; scalar_t__ chdet; int is_on; } ;


 int DA9030_VBATMON ;
 int da9030_charger_update_state (struct da9030_charger*) ;
 int da9030_set_charge (struct da9030_charger*,int) ;
 int da903x_write (int ,int ,scalar_t__) ;

__attribute__((used)) static void da9030_charger_check_state(struct da9030_charger *charger)
{
 da9030_charger_update_state(charger);


 if (!charger->is_on) {
  if ((charger->chdet) &&
      (charger->adc.vbat_res <
       charger->thresholds.vbat_charge_start)) {
   da9030_set_charge(charger, 1);
  }
 } else {

  if (!charger->chdet) {
   da9030_set_charge(charger, 0);
   return;
  }

  if (charger->adc.vbat_res >=
      charger->thresholds.vbat_charge_stop) {
   da9030_set_charge(charger, 0);
   da903x_write(charger->master, DA9030_VBATMON,
           charger->thresholds.vbat_charge_restart);
  } else if (charger->adc.vbat_res >
      charger->thresholds.vbat_low) {



   da903x_write(charger->master, DA9030_VBATMON,
         charger->thresholds.vbat_low);
  }
  if (charger->adc.vchmax_res > charger->thresholds.vcharge_max ||
      charger->adc.vchmin_res < charger->thresholds.vcharge_min ||

      charger->adc.tbat_res < charger->thresholds.tbat_high ||
      charger->adc.tbat_res > charger->thresholds.tbat_low) {

   da9030_set_charge(charger, 0);
  }
 }
}
