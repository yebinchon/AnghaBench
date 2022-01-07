
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int acerhdf_check_param (struct thermal_zone_device*) ;
 int acerhdf_get_temp (int*) ;
 int pr_notice (char*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int acerhdf_get_ec_temp(struct thermal_zone_device *thermal,
          unsigned long *t)
{
 int temp, err = 0;

 acerhdf_check_param(thermal);

 err = acerhdf_get_temp(&temp);
 if (err)
  return err;

 if (verbose)
  pr_notice("temp %d\n", temp);

 *t = temp;
 return 0;
}
