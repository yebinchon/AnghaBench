
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int do_panic () ;

__attribute__((used)) static int on_panic_notify(struct notifier_block *self,
      unsigned long event, void *data)
{
 do_panic();
 return NOTIFY_OK;
}
