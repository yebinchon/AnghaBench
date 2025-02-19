
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long rx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct tty_struct {int dummy; } ;


 long CON_BREAK ;
 long CON_HUP ;
 long HV_EOK ;
 int PAGE_SIZE ;
 unsigned long __pa (scalar_t__*) ;
 scalar_t__* con_read_page ;
 int hung_up ;
 long sun4v_con_read (unsigned long,int ,unsigned long*) ;
 int tty_insert_flip_string (struct tty_struct*,scalar_t__*,unsigned long) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;
 int uart_handle_sysrq_char (struct uart_port*,scalar_t__) ;

__attribute__((used)) static int receive_chars_read(struct uart_port *port, struct tty_struct *tty)
{
 int saw_console_brk = 0;
 int limit = 10000;

 while (limit-- > 0) {
  unsigned long ra = __pa(con_read_page);
  unsigned long bytes_read, i;
  long stat = sun4v_con_read(ra, PAGE_SIZE, &bytes_read);

  if (stat != HV_EOK) {
   bytes_read = 0;

   if (stat == CON_BREAK) {
    if (uart_handle_break(port))
     continue;
    saw_console_brk = 1;
    *con_read_page = 0;
    bytes_read = 1;
   } else if (stat == CON_HUP) {
    hung_up = 1;
    uart_handle_dcd_change(port, 0);
    continue;
   } else {

    break;
   }
  }

  if (hung_up) {
   hung_up = 0;
   uart_handle_dcd_change(port, 1);
  }

  for (i = 0; i < bytes_read; i++)
   uart_handle_sysrq_char(port, con_read_page[i]);

  if (tty == ((void*)0))
   continue;

  port->icount.rx += bytes_read;

  tty_insert_flip_string(tty, con_read_page, bytes_read);
 }

 return saw_console_brk;
}
