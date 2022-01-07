
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int HV_SOFT_STATE_TRANSITION ;
 int NOTIFY_OK ;



 int do_set_sstate (int ,char const*) ;
 char* halting_msg ;
 char* poweroff_msg ;
 char* rebooting_msg ;

__attribute__((used)) static int sstate_reboot_call(struct notifier_block *np, unsigned long type, void *_unused)
{
 const char *msg;

 switch (type) {
 case 130:
 default:
  msg = rebooting_msg;
  break;

 case 129:
  msg = halting_msg;
  break;

 case 128:
  msg = poweroff_msg;
  break;
 }

 do_set_sstate(HV_SOFT_STATE_TRANSITION, msg);

 return NOTIFY_OK;
}
