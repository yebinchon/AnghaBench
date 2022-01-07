
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lock; TYPE_2__* state; } ;
struct sn_cons_port {TYPE_4__* sc_ops; TYPE_3__ sc_port; int sc_is_asynch; } ;
struct console {int dummy; } ;
struct TYPE_8__ {int sal_puts_raw; } ;
struct TYPE_5__ {int head; int tail; } ;
struct TYPE_6__ {TYPE_1__ xmit; } ;


 int BUG_ON (int) ;
 int mdelay (int) ;
 int puts_raw_fixed (int ,char const*,unsigned int) ;
 struct sn_cons_port sal_console_port ;
 int sn_transmit_chars (struct sn_cons_port*,int) ;
 scalar_t__ spin_is_locked (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
sn_sal_console_write(struct console *co, const char *s, unsigned count)
{
 unsigned long flags = 0;
 struct sn_cons_port *port = &sal_console_port;
 static int stole_lock = 0;

 BUG_ON(!port->sc_is_asynch);




 if (!port->sc_port.state) {

  puts_raw_fixed(port->sc_ops->sal_puts_raw, s, count);
  return;
 }



 if (spin_is_locked(&port->sc_port.lock)) {
  int lhead = port->sc_port.state->xmit.head;
  int ltail = port->sc_port.state->xmit.tail;
  int counter, got_lock = 0;
  for (counter = 0; counter < 150; mdelay(125), counter++) {
   if (!spin_is_locked(&port->sc_port.lock)
       || stole_lock) {
    if (!stole_lock) {
     spin_lock_irqsave(&port->sc_port.lock,
         flags);
     got_lock = 1;
    }
    break;
   } else {

    if ((lhead != port->sc_port.state->xmit.head)
        || (ltail !=
     port->sc_port.state->xmit.tail)) {
     lhead =
      port->sc_port.state->xmit.head;
     ltail =
      port->sc_port.state->xmit.tail;
     counter = 0;
    }
   }
  }

  sn_transmit_chars(port, 1);
  if (got_lock) {
   spin_unlock_irqrestore(&port->sc_port.lock, flags);
   stole_lock = 0;
  } else {

   stole_lock = 1;
  }
  puts_raw_fixed(port->sc_ops->sal_puts_raw, s, count);
 } else {
  stole_lock = 0;
  spin_lock_irqsave(&port->sc_port.lock, flags);
  sn_transmit_chars(port, 1);
  spin_unlock_irqrestore(&port->sc_port.lock, flags);

  puts_raw_fixed(port->sc_ops->sal_puts_raw, s, count);
 }
}
