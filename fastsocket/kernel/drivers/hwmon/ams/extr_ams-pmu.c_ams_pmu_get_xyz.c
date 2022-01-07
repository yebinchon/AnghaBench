
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int AMS_X ;
 int AMS_Y ;
 int AMS_Z ;
 int ams_pmu_get_register (int ) ;

__attribute__((used)) static void ams_pmu_get_xyz(s8 *x, s8 *y, s8 *z)
{
 *x = ams_pmu_get_register(AMS_X);
 *y = ams_pmu_get_register(AMS_Y);
 *z = ams_pmu_get_register(AMS_Z);
}
