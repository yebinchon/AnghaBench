
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; } ;
struct uart_state {struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int dummy; } ;
struct tty_struct {int flags; struct uart_state* driver_data; } ;
struct file {int dummy; } ;


 int EIO ;
 int TTY_IO_ERROR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_hung_up_p (struct file*) ;
 int uart_update_mctrl (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static int
uart_tiocmset(struct tty_struct *tty, struct file *file,
       unsigned int set, unsigned int clear)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *uport = state->uart_port;
 struct tty_port *port = &state->port;
 int ret = -EIO;

 mutex_lock(&port->mutex);
 if ((!file || !tty_hung_up_p(file)) &&
     !(tty->flags & (1 << TTY_IO_ERROR))) {
  uart_update_mctrl(uport, set, clear);
  ret = 0;
 }
 mutex_unlock(&port->mutex);
 return ret;
}
