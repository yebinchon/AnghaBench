
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 int ACERHDF_FAN_AUTO ;
 int ACERHDF_FAN_OFF ;
 int EINVAL ;
 int acerhdf_change_fanstate (int) ;
 int acerhdf_get_fanstate (int*) ;
 int acerhdf_get_temp (int*) ;
 int acerhdf_revert_to_bios_mode () ;
 int fanoff ;
 int kernelmode ;
 int pr_err (char*) ;

__attribute__((used)) static int acerhdf_set_cur_state(struct thermal_cooling_device *cdev,
     unsigned long state)
{
 int cur_temp, cur_state, err = 0;

 if (!kernelmode)
  return 0;

 err = acerhdf_get_temp(&cur_temp);
 if (err) {
  pr_err("error reading temperature, hand off control to BIOS\n");
  goto err_out;
 }

 err = acerhdf_get_fanstate(&cur_state);
 if (err) {
  pr_err("error reading fan state, hand off control to BIOS\n");
  goto err_out;
 }

 if (state == 0) {

  if ((cur_state == ACERHDF_FAN_AUTO) &&
      (cur_temp < fanoff))
   acerhdf_change_fanstate(ACERHDF_FAN_OFF);
 } else {
  if (cur_state == ACERHDF_FAN_OFF)
   acerhdf_change_fanstate(ACERHDF_FAN_AUTO);
 }
 return 0;

err_out:
 acerhdf_revert_to_bios_mode();
 return -EINVAL;
}
