
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;




 int vmwdt_resume () ;
 int vmwdt_suspend () ;

__attribute__((used)) static int vmwdt_power_event(struct notifier_block *this, unsigned long event,
        void *ptr)
{
 switch (event) {
 case 130:
 case 129:
  return vmwdt_resume();
 case 131:
 case 128:
  return vmwdt_suspend();
 default:
  return NOTIFY_DONE;
 }
}
