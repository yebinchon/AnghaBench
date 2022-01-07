
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_pub {int dummy; } ;


 int ALP_CLOCK ;



 int CC_CAP_PMU ;
 int ai_get_cccaps (struct si_pub*) ;
 int ai_get_chip_id (struct si_pub*) ;

u32 si_pmu_alp_clock(struct si_pub *sih)
{
 u32 clock = ALP_CLOCK;


 if (!(ai_get_cccaps(sih) & CC_CAP_PMU))
  return clock;

 switch (ai_get_chip_id(sih)) {
 case 129:
 case 128:
 case 130:

  clock = 20000 * 1000;
  break;
 default:
  break;
 }

 return clock;
}
