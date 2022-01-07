
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int dpm_prepare (int ) ;
 int dpm_suspend (int ) ;
 int might_sleep () ;

int dpm_suspend_start(pm_message_t state)
{
 int error;

 might_sleep();
 error = dpm_prepare(state);
 if (!error)
  error = dpm_suspend(state);
 return error;
}
