
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermostat {int dummy; } ;


 int display_stats (struct thermostat*) ;
 int fan_speed ;
 int kthread_should_stop () ;
 int msleep_interruptible (int) ;
 int read_sensors (struct thermostat*) ;
 int set_freezable () ;
 int try_to_freeze () ;
 int update_fans_speed (struct thermostat*) ;

__attribute__((used)) static int monitor_task(void *arg)
{
 struct thermostat* th = arg;

 set_freezable();
 while(!kthread_should_stop()) {
  try_to_freeze();
  msleep_interruptible(2000);


  if (fan_speed != -1)
   read_sensors(th);




  if (fan_speed != -1)
   update_fans_speed(th);





 }

 return 0;
}
