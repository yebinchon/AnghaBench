
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int NOTIFY_DONE ;



 int xpSystemGoingDown ;
 int xpSystemHalt ;
 int xpSystemPoweroff ;
 int xpSystemReboot ;
 int xpc_do_exit (int) ;

__attribute__((used)) static int
xpc_system_reboot(struct notifier_block *nb, unsigned long event, void *unused)
{
 enum xp_retval reason;

 switch (event) {
 case 128:
  reason = xpSystemReboot;
  break;
 case 130:
  reason = xpSystemHalt;
  break;
 case 129:
  reason = xpSystemPoweroff;
  break;
 default:
  reason = xpSystemGoingDown;
 }

 xpc_do_exit(reason);
 return NOTIFY_DONE;
}
