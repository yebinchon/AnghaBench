
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tty; } ;
struct uart_state {TYPE_2__ port; } ;
struct uart_port {int mapbase; struct uart_state* state; } ;
struct ktermios {int dummy; } ;
struct ioc4_port {int dummy; } ;
struct TYPE_3__ {int termios; } ;


 struct ioc4_port* get_ioc4_port (struct uart_port*,int ) ;
 int ioc4_change_speed (struct uart_port*,int ,struct ktermios*) ;
 int ioc4_set_proto (struct ioc4_port*,int ) ;
 int local_open (struct ioc4_port*) ;

__attribute__((used)) static inline int ic4_startup_local(struct uart_port *the_port)
{
 struct ioc4_port *port;
 struct uart_state *state;

 if (!the_port)
  return -1;

 port = get_ioc4_port(the_port, 0);
 if (!port)
  return -1;

 state = the_port->state;

 local_open(port);


 ioc4_set_proto(port, the_port->mapbase);


 ioc4_change_speed(the_port, state->port.tty->termios,
     (struct ktermios *)0);

 return 0;
}
