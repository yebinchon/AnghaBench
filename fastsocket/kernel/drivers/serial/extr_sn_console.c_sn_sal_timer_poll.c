
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int irq; } ;
struct sn_cons_port {scalar_t__ sc_interrupt_timeout; int sc_timer; TYPE_1__ sc_port; } ;


 int TRANSMIT_RAW ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ sn_process_input ;
 int sn_receive_chars (struct sn_cons_port*,unsigned long) ;
 int sn_transmit_chars (struct sn_cons_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sn_sal_timer_poll(unsigned long data)
{
 struct sn_cons_port *port = (struct sn_cons_port *)data;
 unsigned long flags;

 if (!port)
  return;

 if (!port->sc_port.irq) {
  spin_lock_irqsave(&port->sc_port.lock, flags);
  if (sn_process_input)
   sn_receive_chars(port, flags);
  sn_transmit_chars(port, TRANSMIT_RAW);
  spin_unlock_irqrestore(&port->sc_port.lock, flags);
  mod_timer(&port->sc_timer,
     jiffies + port->sc_interrupt_timeout);
 }
}
