
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uart_port {int line; TYPE_3__* state; } ;
struct TYPE_10__ {TYPE_1__* termios; TYPE_4__* driver; } ;
struct TYPE_9__ {int num; } ;
struct TYPE_7__ {TYPE_5__* tty; } ;
struct TYPE_8__ {TYPE_2__ port; } ;
struct TYPE_6__ {int c_line; } ;


 unsigned short IREN ;

 unsigned short RPOLC ;
 unsigned short UART_GET_GCTL (int *) ;
 int UART_PUT_GCTL (int *,unsigned short) ;
 int * bfin_serial_ports ;

__attribute__((used)) static void bfin_serial_set_ldisc(struct uart_port *port)
{
 int line = port->line;
 unsigned short val;

 if (line >= port->state->port.tty->driver->num)
  return;

 switch (port->state->port.tty->termios->c_line) {
 case 128:
  val = UART_GET_GCTL(&bfin_serial_ports[line]);
  val |= (IREN | RPOLC);
  UART_PUT_GCTL(&bfin_serial_ports[line], val);
  break;
 default:
  val = UART_GET_GCTL(&bfin_serial_ports[line]);
  val &= ~(IREN | RPOLC);
  UART_PUT_GCTL(&bfin_serial_ports[line], val);
 }
}
