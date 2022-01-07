
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct channel {int port; scalar_t__ event; } ;


 int pc_flush_buffer (struct tty_struct*) ;
 int shutdown (struct channel*,struct tty_struct*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_port_hangup (int *) ;
 struct channel* verifyChannel (struct tty_struct*) ;

__attribute__((used)) static void pc_hangup(struct tty_struct *tty)
{
 struct channel *ch;





 ch = verifyChannel(tty);
 if (ch != ((void*)0)) {
  pc_flush_buffer(tty);
  tty_ldisc_flush(tty);
  shutdown(ch, tty);

  ch->event = 0;
  tty_port_hangup(&ch->port);
 }
}
