
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct si_pub {int dummy; } ;





 int PMU_MAX_TRANSITION_DLY ;
 int ai_get_chip_id (struct si_pub*) ;

u16 si_pmu_fast_pwrup_delay(struct si_pub *sih)
{
 uint delay = PMU_MAX_TRANSITION_DLY;

 switch (ai_get_chip_id(sih)) {
 case 129:
 case 128:
 case 130:
  delay = 3700;
  break;
 default:
  break;
 }

 return (u16) delay;
}
