
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int temperature; int last_temperature; int status; } ;


 int D_POWER (char*,...) ;
 int D_TEMP (char*) ;
 int IL_TEMPERATURE_THRESHOLD ;
 int S_STATS ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
il4965_is_temp_calib_needed(struct il_priv *il)
{
 int temp_diff;

 if (!test_bit(S_STATS, &il->status)) {
  D_TEMP("Temperature not updated -- no stats.\n");
  return 0;
 }

 temp_diff = il->temperature - il->last_temperature;


 if (temp_diff < 0) {
  D_POWER("Getting cooler, delta %d\n", temp_diff);
  temp_diff = -temp_diff;
 } else if (temp_diff == 0)
  D_POWER("Temperature unchanged\n");
 else
  D_POWER("Getting warmer, delta %d\n", temp_diff);

 if (temp_diff < IL_TEMPERATURE_THRESHOLD) {
  D_POWER(" => thermal txpower calib not needed\n");
  return 0;
 }

 D_POWER(" => thermal txpower calib needed\n");

 return 1;
}
