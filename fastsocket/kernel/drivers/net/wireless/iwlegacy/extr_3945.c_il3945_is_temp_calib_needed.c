
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int temperature; int last_temperature; } ;


 int D_POWER (char*,...) ;
 int IL_TEMPERATURE_LIMIT_TIMER ;
 int il3945_hw_reg_txpower_get_temperature (struct il_priv*) ;

__attribute__((used)) static int
il3945_is_temp_calib_needed(struct il_priv *il)
{
 int temp_diff;

 il->temperature = il3945_hw_reg_txpower_get_temperature(il);
 temp_diff = il->temperature - il->last_temperature;


 if (temp_diff < 0) {
  D_POWER("Getting cooler, delta %d,\n", temp_diff);
  temp_diff = -temp_diff;
 } else if (temp_diff == 0)
  D_POWER("Same temp,\n");
 else
  D_POWER("Getting warmer, delta %d,\n", temp_diff);


 if (temp_diff < IL_TEMPERATURE_LIMIT_TIMER) {
  D_POWER("Timed thermal calib not needed\n");
  return 0;
 }

 D_POWER("Timed thermal calib needed\n");



 il->last_temperature = il->temperature;
 return 1;
}
