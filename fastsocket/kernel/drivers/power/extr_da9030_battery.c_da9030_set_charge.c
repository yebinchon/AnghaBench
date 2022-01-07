
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da9030_charger {int charge_milliamp; int charge_millivolt; int is_on; int psy; int master; } ;


 int DA9030_CHARGE_CONTROL ;
 int DA9030_CHRG_CHARGER_ENABLE ;
 int da903x_write (int ,int ,int) ;
 int power_supply_changed (int *) ;

__attribute__((used)) static void da9030_set_charge(struct da9030_charger *charger, int on)
{
 uint8_t val;

 if (on) {
  val = DA9030_CHRG_CHARGER_ENABLE;
  val |= (charger->charge_milliamp / 100) << 3;
  val |= (charger->charge_millivolt - 4000) / 50;
  charger->is_on = 1;
 } else {
  val = 0;
  charger->is_on = 0;
 }

 da903x_write(charger->master, DA9030_CHARGE_CONTROL, val);

 power_supply_changed(&charger->psy);
}
