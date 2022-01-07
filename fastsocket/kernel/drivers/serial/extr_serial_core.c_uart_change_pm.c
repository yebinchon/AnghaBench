
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {int pm_state; struct uart_port* uart_port; } ;
struct uart_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* pm ) (struct uart_port*,int,int) ;} ;


 int stub1 (struct uart_port*,int,int) ;

__attribute__((used)) static void uart_change_pm(struct uart_state *state, int pm_state)
{
 struct uart_port *port = state->uart_port;

 if (state->pm_state != pm_state) {
  if (port->ops->pm)
   port->ops->pm(port, pm_state, state->pm_state);
  state->pm_state = pm_state;
 }
}
