
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sx_port* driver_data; } ;
struct sx_port {int dummy; } ;
struct file {int dummy; } ;


 int sx_getsignals (struct sx_port*) ;

__attribute__((used)) static int sx_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct sx_port *port = tty->driver_data;
 return sx_getsignals(port);
}
