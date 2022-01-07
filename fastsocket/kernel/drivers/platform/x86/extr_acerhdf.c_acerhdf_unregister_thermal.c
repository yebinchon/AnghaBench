
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cl_dev ;
 int thermal_cooling_device_unregister (int *) ;
 int thermal_zone_device_unregister (int *) ;
 int * thz_dev ;

__attribute__((used)) static void acerhdf_unregister_thermal(void)
{
 if (cl_dev) {
  thermal_cooling_device_unregister(cl_dev);
  cl_dev = ((void*)0);
 }

 if (thz_dev) {
  thermal_zone_device_unregister(thz_dev);
  thz_dev = ((void*)0);
 }
}
