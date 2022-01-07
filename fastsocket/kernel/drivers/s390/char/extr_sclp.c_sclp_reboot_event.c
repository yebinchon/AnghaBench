
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int sclp_deactivate () ;

__attribute__((used)) static int
sclp_reboot_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 sclp_deactivate();
 return NOTIFY_DONE;
}
