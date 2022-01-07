
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sn_cons_port {TYPE_1__ sc_port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SAL_CONSOLE_INTR_RECV ;
 int SAL_CONSOLE_INTR_XMIT ;
 int TRANSMIT_BUFFERED ;
 int ia64_sn_console_intr_status () ;
 int sn_receive_chars (struct sn_cons_port*,unsigned long) ;
 int sn_transmit_chars (struct sn_cons_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t sn_sal_interrupt(int irq, void *dev_id)
{
 struct sn_cons_port *port = (struct sn_cons_port *)dev_id;
 unsigned long flags;
 int status = ia64_sn_console_intr_status();

 if (!port)
  return IRQ_NONE;

 spin_lock_irqsave(&port->sc_port.lock, flags);
 if (status & SAL_CONSOLE_INTR_RECV) {
  sn_receive_chars(port, flags);
 }
 if (status & SAL_CONSOLE_INTR_XMIT) {
  sn_transmit_chars(port, TRANSMIT_BUFFERED);
 }
 spin_unlock_irqrestore(&port->sc_port.lock, flags);
 return IRQ_HANDLED;
}
