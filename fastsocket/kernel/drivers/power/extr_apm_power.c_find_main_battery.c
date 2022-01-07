
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intval; } ;
struct find_bat_param {int max_energy; int max_charge; int * bat; int * max_energy_bat; int * max_charge_bat; TYPE_1__ full; int * main; } ;


 int PSY_PROP (int *,int ,TYPE_1__*) ;
 int VOLTAGE_MAX_DESIGN ;
 int __find_main_battery ;
 int class_for_each_device (int ,int *,struct find_bat_param*,int ) ;
 int * main_battery ;
 int memset (struct find_bat_param*,int ,int) ;
 int power_supply_class ;

__attribute__((used)) static void find_main_battery(void)
{
 struct find_bat_param bp;
 int error;

 memset(&bp, 0, sizeof(struct find_bat_param));
 main_battery = ((void*)0);
 bp.main = main_battery;

 error = class_for_each_device(power_supply_class, ((void*)0), &bp,
          __find_main_battery);
 if (error) {
  main_battery = bp.main;
  return;
 }

 if ((bp.max_energy_bat && bp.max_charge_bat) &&
   (bp.max_energy_bat != bp.max_charge_bat)) {

  if (!PSY_PROP(bp.max_charge_bat, VOLTAGE_MAX_DESIGN,
         &bp.full)) {
   if (bp.max_energy > bp.max_charge * bp.full.intval)
    main_battery = bp.max_energy_bat;
   else
    main_battery = bp.max_charge_bat;
  } else if (!PSY_PROP(bp.max_energy_bat, VOLTAGE_MAX_DESIGN,
          &bp.full)) {
   if (bp.max_charge > bp.max_energy / bp.full.intval)
    main_battery = bp.max_charge_bat;
   else
    main_battery = bp.max_energy_bat;
  } else {

   main_battery = bp.max_energy_bat;
  }
 } else if (bp.max_charge_bat) {
  main_battery = bp.max_charge_bat;
 } else if (bp.max_energy_bat) {
  main_battery = bp.max_energy_bat;
 } else {

  main_battery = bp.bat;
 }
}
