
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;



__attribute__((used)) static int fan_get_max_state(struct thermal_cooling_device *cdev, unsigned long
        *state)
{

 *state = 1;
 return 0;
}
