
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int polling_delay; } ;


 scalar_t__ ACERHDF_MAX_FANON ;
 int ACERHDF_MAX_INTERVAL ;
 scalar_t__ fanon ;
 int interval ;
 scalar_t__ kernelmode ;
 int pr_err (char*,int) ;
 int pr_notice (char*,int) ;
 int prev_interval ;
 scalar_t__ verbose ;

__attribute__((used)) static void acerhdf_check_param(struct thermal_zone_device *thermal)
{
 if (fanon > ACERHDF_MAX_FANON) {
  pr_err("fanon temperature too high, set to %d\n",
    ACERHDF_MAX_FANON);
  fanon = ACERHDF_MAX_FANON;
 }

 if (kernelmode && prev_interval != interval) {
  if (interval > ACERHDF_MAX_INTERVAL) {
   pr_err("interval too high, set to %d\n",
    ACERHDF_MAX_INTERVAL);
   interval = ACERHDF_MAX_INTERVAL;
  }
  if (verbose)
   pr_notice("interval changed to: %d\n",
     interval);
  thermal->polling_delay = interval*1000;
  prev_interval = interval;
 }
}
