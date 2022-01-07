
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_port {int dummy; } ;
struct file {int dummy; } ;
struct channel {scalar_t__ event; struct tty_port port; } ;


 int pc_flush_buffer (struct tty_struct*) ;
 int shutdown (struct channel*,struct tty_struct*) ;
 int tty_port_close_end (struct tty_port*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (struct tty_port*,struct tty_struct*,struct file*) ;
 int tty_port_tty_set (struct tty_port*,int *) ;
 struct channel* verifyChannel (struct tty_struct*) ;

__attribute__((used)) static void pc_close(struct tty_struct *tty, struct file *filp)
{
 struct channel *ch;
 struct tty_port *port;




 ch = verifyChannel(tty);
 if (ch == ((void*)0))
  return;
 port = &ch->port;

 if (tty_port_close_start(port, tty, filp) == 0)
  return;

 pc_flush_buffer(tty);
 shutdown(ch, tty);

 tty_port_close_end(port, tty);
 ch->event = 0;
 tty_port_tty_set(port, ((void*)0));
}
