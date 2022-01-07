
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int sclp_console_flush () ;

__attribute__((used)) static int sclp_console_notify(struct notifier_block *self,
          unsigned long event, void *data)
{
 sclp_console_flush();
 return NOTIFY_OK;
}
