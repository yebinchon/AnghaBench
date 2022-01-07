
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_sunsab_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;
struct ktermios {int c_iflag; int c_cflag; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunsab_convert_to_sab (struct uart_sunsab_port*,int ,int ,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;

__attribute__((used)) static void sunsab_set_termios(struct uart_port *port, struct ktermios *termios,
          struct ktermios *old)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
 unsigned long flags;
 unsigned int baud = uart_get_baud_rate(port, termios, old, 0, 4000000);
 unsigned int quot = uart_get_divisor(port, baud);

 spin_lock_irqsave(&up->port.lock, flags);
 sunsab_convert_to_sab(up, termios->c_cflag, termios->c_iflag, baud, quot);
 spin_unlock_irqrestore(&up->port.lock, flags);
}
