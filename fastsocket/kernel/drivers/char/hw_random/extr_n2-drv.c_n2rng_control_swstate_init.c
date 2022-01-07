
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2rng_unit {int * control; } ;
struct n2rng {int num_units; int hv_state; struct n2rng_unit* units; int wd_timeo; int accum_cycles; int health_check_sec; int flags; } ;


 int CONTROL_DEFAULT_0 ;
 int CONTROL_DEFAULT_1 ;
 int CONTROL_DEFAULT_2 ;
 int CONTROL_DEFAULT_3 ;
 int HV_RNG_STATE_UNCONFIGURED ;
 int N2RNG_ACCUM_CYCLES_DEFAULT ;
 int N2RNG_FLAG_CONTROL ;
 int N2RNG_HEALTH_CHECK_SEC_DEFAULT ;
 int N2RNG_WD_TIMEO_DEFAULT ;

__attribute__((used)) static void n2rng_control_swstate_init(struct n2rng *np)
{
 int i;

 np->flags |= N2RNG_FLAG_CONTROL;

 np->health_check_sec = N2RNG_HEALTH_CHECK_SEC_DEFAULT;
 np->accum_cycles = N2RNG_ACCUM_CYCLES_DEFAULT;
 np->wd_timeo = N2RNG_WD_TIMEO_DEFAULT;

 for (i = 0; i < np->num_units; i++) {
  struct n2rng_unit *up = &np->units[i];

  up->control[0] = CONTROL_DEFAULT_0;
  up->control[1] = CONTROL_DEFAULT_1;
  up->control[2] = CONTROL_DEFAULT_2;
  up->control[3] = CONTROL_DEFAULT_3;
 }

 np->hv_state = HV_RNG_STATE_UNCONFIGURED;
}
