
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adb_type; } ;


 int ENODEV ;
 scalar_t__ MAC_ADB_PB1 ;
 scalar_t__ MAC_ADB_PB2 ;
 int PMU_68K_V1 ;
 int PMU_68K_V2 ;
 int idle ;
 TYPE_1__* macintosh_config ;
 int pmu_kind ;
 int pmu_state ;

int pmu_probe(void)
{
 if (macintosh_config->adb_type == MAC_ADB_PB1) {
  pmu_kind = PMU_68K_V1;
 } else if (macintosh_config->adb_type == MAC_ADB_PB2) {
  pmu_kind = PMU_68K_V2;
 } else {
  return -ENODEV;
 }

 pmu_state = idle;

 return 0;
}
