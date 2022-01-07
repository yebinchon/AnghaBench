
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int SCLP_PM_EVENT_THAW ;
 scalar_t__ sclp_suspend_state ;
 scalar_t__ sclp_suspend_state_suspended ;
 int sclp_undo_suspend (int ) ;

__attribute__((used)) static int sclp_panic_notify(struct notifier_block *self,
        unsigned long event, void *data)
{
 if (sclp_suspend_state == sclp_suspend_state_suspended)
  sclp_undo_suspend(SCLP_PM_EVENT_THAW);
 return NOTIFY_OK;
}
