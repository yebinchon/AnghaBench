
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct backside_pid_state {int * monitor; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_backside_fan_pwm ;
 int dev_attr_backside_temperature ;
 int device_remove_file (int *,int *) ;
 TYPE_1__* of_dev ;

__attribute__((used)) static void dispose_backside_state(struct backside_pid_state *state)
{
 if (state->monitor == ((void*)0))
  return;

 device_remove_file(&of_dev->dev, &dev_attr_backside_temperature);
 device_remove_file(&of_dev->dev, &dev_attr_backside_fan_pwm);

 state->monitor = ((void*)0);
}
