
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ sysrq; } ;
struct console {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ oops_in_progress ;
 int spin_lock (int *) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int sunhv_console_putchar (struct uart_port*,char) ;
 struct uart_port* sunhv_port ;

__attribute__((used)) static void sunhv_console_write_bychar(struct console *con, const char *s, unsigned n)
{
 struct uart_port *port = sunhv_port;
 unsigned long flags;
 int i, locked = 1;

 local_irq_save(flags);
 if (port->sysrq) {
  locked = 0;
 } else if (oops_in_progress) {
  locked = spin_trylock(&port->lock);
 } else
  spin_lock(&port->lock);

 for (i = 0; i < n; i++) {
  if (*s == '\n')
   sunhv_console_putchar(port, '\r');
  sunhv_console_putchar(port, *s++);
 }

 if (locked)
  spin_unlock(&port->lock);
 local_irq_restore(flags);
}
