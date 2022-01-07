
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_battery_info {int flags; } ;




 int PMU_BATT_TYPE_MASK ;

 char** pmu_batt_types ;

__attribute__((used)) static char *pmu_bat_get_model_name(struct pmu_battery_info *pbi)
{
 switch (pbi->flags & PMU_BATT_TYPE_MASK) {
 case 128:
  return pmu_batt_types[0];
 case 130:
  return pmu_batt_types[1];
 case 129:
  return pmu_batt_types[2];
 default: break;
 }
 return pmu_batt_types[3];
}
