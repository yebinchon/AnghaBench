
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 int ACERHDF_FAN_AUTO ;
 int acerhdf_get_fanstate (int*) ;

__attribute__((used)) static int acerhdf_get_cur_state(struct thermal_cooling_device *cdev,
     unsigned long *state)
{
 int err = 0, tmp;

 err = acerhdf_get_fanstate(&tmp);
 if (err)
  return err;

 *state = (tmp == ACERHDF_FAN_AUTO) ? 1 : 0;
 return 0;
}
