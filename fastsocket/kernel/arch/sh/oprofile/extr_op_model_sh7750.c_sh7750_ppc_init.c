
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_timer_hook (int ) ;
 int sh7750_ppc_reset () ;
 int sh7750_timer_notify ;

__attribute__((used)) static int sh7750_ppc_init(void)
{
 sh7750_ppc_reset();

 return register_timer_hook(sh7750_timer_notify);
}
