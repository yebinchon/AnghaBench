
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int __halt () ;
 scalar_t__ alpha_using_srm ;
 scalar_t__ srmcons_output ;

__attribute__((used)) static int
alpha_panic_event(struct notifier_block *this, unsigned long event, void *ptr)
{



 if (alpha_using_srm && srmcons_output)
  __halt();

        return NOTIFY_DONE;
}
