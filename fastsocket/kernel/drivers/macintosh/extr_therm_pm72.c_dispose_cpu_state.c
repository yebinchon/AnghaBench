
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_pid_state {scalar_t__ index; int * monitor; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_cpu0_current ;
 int dev_attr_cpu0_exhaust_fan_rpm ;
 int dev_attr_cpu0_intake_fan_rpm ;
 int dev_attr_cpu0_temperature ;
 int dev_attr_cpu0_voltage ;
 int dev_attr_cpu1_current ;
 int dev_attr_cpu1_exhaust_fan_rpm ;
 int dev_attr_cpu1_intake_fan_rpm ;
 int dev_attr_cpu1_temperature ;
 int dev_attr_cpu1_voltage ;
 int device_remove_file (int *,int *) ;
 TYPE_1__* of_dev ;

__attribute__((used)) static void dispose_cpu_state(struct cpu_pid_state *state)
{
 if (state->monitor == ((void*)0))
  return;

 if (state->index == 0) {
  device_remove_file(&of_dev->dev, &dev_attr_cpu0_temperature);
  device_remove_file(&of_dev->dev, &dev_attr_cpu0_voltage);
  device_remove_file(&of_dev->dev, &dev_attr_cpu0_current);
  device_remove_file(&of_dev->dev, &dev_attr_cpu0_exhaust_fan_rpm);
  device_remove_file(&of_dev->dev, &dev_attr_cpu0_intake_fan_rpm);
 } else {
  device_remove_file(&of_dev->dev, &dev_attr_cpu1_temperature);
  device_remove_file(&of_dev->dev, &dev_attr_cpu1_voltage);
  device_remove_file(&of_dev->dev, &dev_attr_cpu1_current);
  device_remove_file(&of_dev->dev, &dev_attr_cpu1_exhaust_fan_rpm);
  device_remove_file(&of_dev->dev, &dev_attr_cpu1_intake_fan_rpm);
 }

 state->monitor = ((void*)0);
}
