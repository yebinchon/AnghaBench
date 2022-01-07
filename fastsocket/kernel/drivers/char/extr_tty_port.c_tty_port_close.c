
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct file {int dummy; } ;


 int tty_port_close_end (struct tty_port*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (struct tty_port*,struct tty_struct*,struct file*) ;
 int tty_port_shutdown (struct tty_port*) ;
 int tty_port_tty_set (struct tty_port*,int *) ;

void tty_port_close(struct tty_port *port, struct tty_struct *tty,
       struct file *filp)
{
 if (tty_port_close_start(port, tty, filp) == 0)
  return;
 tty_port_shutdown(port);
 tty_port_close_end(port, tty);
 tty_port_tty_set(port, ((void*)0));
}
