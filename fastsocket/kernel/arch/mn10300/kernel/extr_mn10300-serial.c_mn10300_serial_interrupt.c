
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; } ;
struct mn10300_serial_port {scalar_t__ type; int* _status; int tx_cts; TYPE_1__ uart; scalar_t__ intr_flags; int name; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MNSCx_RX_AVAIL ;
 int MNSCx_TX_EMPTY ;
 int MNSCx_TX_SPACE ;
 scalar_t__ PORT_MN10300_CTS ;
 int SC2STR_CTS ;
 int _debug (char*,int ,scalar_t__) ;
 scalar_t__ mask_test_and_clear (scalar_t__*,int) ;
 int mn10300_serial_cts_changed (struct mn10300_serial_port*,int) ;
 int mn10300_serial_receive_interrupt (struct mn10300_serial_port*) ;
 int mn10300_serial_transmit_interrupt (struct mn10300_serial_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t mn10300_serial_interrupt(int irq, void *dev_id)
{
 struct mn10300_serial_port *port = dev_id;
 u8 st;

 spin_lock(&port->uart.lock);

 if (port->intr_flags) {
  _debug("INT %s: %x", port->name, port->intr_flags);

  if (mask_test_and_clear(&port->intr_flags, MNSCx_RX_AVAIL))
   mn10300_serial_receive_interrupt(port);

  if (mask_test_and_clear(&port->intr_flags,
     MNSCx_TX_SPACE | MNSCx_TX_EMPTY))
   mn10300_serial_transmit_interrupt(port);
 }



 if (port->type == PORT_MN10300_CTS) {
  st = *port->_status;
  if ((port->tx_cts ^ st) & SC2STR_CTS)
   mn10300_serial_cts_changed(port, st);
 }

 spin_unlock(&port->uart.lock);

 return IRQ_HANDLED;
}
