
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct tty_struct {int dummy; } ;


 long CON_BREAK ;
 long CON_HUP ;
 long HV_EWOULDBLOCK ;
 int TTY_NORMAL ;
 int hung_up ;
 long sun4v_con_getchar (long*) ;
 int tty_insert_flip_char (struct tty_struct*,long,int ) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,long) ;

__attribute__((used)) static int receive_chars_getchar(struct uart_port *port, struct tty_struct *tty)
{
 int saw_console_brk = 0;
 int limit = 10000;

 while (limit-- > 0) {
  long status;
  long c = sun4v_con_getchar(&status);

  if (status == HV_EWOULDBLOCK)
   break;

  if (c == CON_BREAK) {
   if (uart_handle_break(port))
    continue;
   saw_console_brk = 1;
   c = 0;
  }

  if (c == CON_HUP) {
   hung_up = 1;
   uart_handle_dcd_change(port, 0);
  } else if (hung_up) {
   hung_up = 0;
   uart_handle_dcd_change(port, 1);
  }

  if (tty == ((void*)0)) {
   uart_handle_sysrq_char(port, c);
   continue;
  }

  port->icount.rx++;

  if (uart_handle_sysrq_char(port, c))
   continue;

  tty_insert_flip_char(tty, c, TTY_NORMAL);
 }

 return saw_console_brk;
}
