
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;


 int THERMAL_TRIP_ACTIVE ;

__attribute__((used)) static int acerhdf_get_trip_type(struct thermal_zone_device *thermal, int trip,
     enum thermal_trip_type *type)
{
 if (trip == 0)
  *type = THERMAL_TRIP_ACTIVE;

 return 0;
}
