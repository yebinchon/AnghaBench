
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh7750_ppc_reset () ;
 int sh7750_timer_notify ;
 int unregister_timer_hook (int ) ;

__attribute__((used)) static void sh7750_ppc_exit(void)
{
 unregister_timer_hook(sh7750_timer_notify);

 sh7750_ppc_reset();
}
