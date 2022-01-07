
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AMS_VENDOR ;
 int ams_pmu_get_register (int ) ;

__attribute__((used)) static u8 ams_pmu_get_vendor(void)
{
 return ams_pmu_get_register(AMS_VENDOR);
}
