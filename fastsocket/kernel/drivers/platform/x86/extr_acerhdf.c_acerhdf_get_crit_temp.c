
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 unsigned long ACERHDF_TEMP_CRIT ;

__attribute__((used)) static int acerhdf_get_crit_temp(struct thermal_zone_device *thermal,
     unsigned long *temperature)
{
 *temperature = ACERHDF_TEMP_CRIT;
 return 0;
}
