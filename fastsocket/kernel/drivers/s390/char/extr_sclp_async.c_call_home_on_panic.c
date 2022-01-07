
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int nodename; } ;


 int NOTIFY_DONE ;
 TYPE_1__* init_utsname () ;
 int sclp_async_send_wait (void*) ;
 int strncat (void*,int ,int) ;

__attribute__((used)) static int call_home_on_panic(struct notifier_block *self,
         unsigned long event, void *data)
{
 strncat(data, init_utsname()->nodename,
  sizeof(init_utsname()->nodename));
 sclp_async_send_wait(data);
 return NOTIFY_DONE;
}
