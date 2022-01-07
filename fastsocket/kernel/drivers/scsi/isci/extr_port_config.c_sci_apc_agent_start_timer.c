
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sci_port_configuration_agent {int timer_pending; int timer; } ;


 int sci_mod_timer (int *,int ) ;

__attribute__((used)) static void sci_apc_agent_start_timer(struct sci_port_configuration_agent *port_agent,
          u32 timeout)
{
 port_agent->timer_pending = 1;
 sci_mod_timer(&port_agent->timer, timeout);
}
