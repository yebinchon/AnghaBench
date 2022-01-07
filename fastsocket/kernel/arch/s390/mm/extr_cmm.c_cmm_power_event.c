
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;


 int cmm_resume () ;
 int cmm_suspend () ;

__attribute__((used)) static int cmm_power_event(struct notifier_block *this,
      unsigned long event, void *ptr)
{
 switch (event) {
 case 128:
  return cmm_resume();
 case 129:
  return cmm_suspend();
 default:
  return NOTIFY_DONE;
 }
}
