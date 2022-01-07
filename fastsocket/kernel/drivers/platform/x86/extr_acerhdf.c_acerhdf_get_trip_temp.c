
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 unsigned long fanon ;

__attribute__((used)) static int acerhdf_get_trip_temp(struct thermal_zone_device *thermal, int trip,
     unsigned long *temp)
{
 if (trip == 0)
  *temp = fanon;

 return 0;
}
