
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tty_struct* tty; } ;
struct uart_state {TYPE_1__ port; } ;
struct TYPE_4__ {int rx; } ;
struct uart_port {int lock; TYPE_2__ icount; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;
struct ioc3_port {int ip_flags; } ;


 int INPUT_ENABLE ;
 int MAX_CHARS ;
 int do_read (struct uart_port*,unsigned char*,int) ;
 struct ioc3_port* get_ioc3_port (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char*,int) ;

__attribute__((used)) static int receive_chars(struct uart_port *the_port)
{
 struct tty_struct *tty;
 unsigned char ch[MAX_CHARS];
 int read_count = 0, read_room, flip = 0;
 struct uart_state *state = the_port->state;
 struct ioc3_port *port = get_ioc3_port(the_port);
 unsigned long pflags;


 if (!state)
  return 0;
 if (!state->port.tty)
  return 0;

 if (!(port->ip_flags & INPUT_ENABLE))
  return 0;

 spin_lock_irqsave(&the_port->lock, pflags);
 tty = state->port.tty;

 read_count = do_read(the_port, ch, MAX_CHARS);
 if (read_count > 0) {
  flip = 1;
  read_room = tty_buffer_request_room(tty, read_count);
  tty_insert_flip_string(tty, ch, read_room);
  the_port->icount.rx += read_count;
 }
 spin_unlock_irqrestore(&the_port->lock, pflags);

 if (flip)
  tty_flip_buffer_push(tty);

 return read_count;
}
