
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PNX8XXX_ICLR ;
 int PNX8XXX_IEN ;
 int PNX8XXX_ISTAT ;
 unsigned int PNX8XXX_UART_INT_BREAK ;
 unsigned int PNX8XXX_UART_INT_RX ;
 unsigned int PNX8XXX_UART_INT_TX ;
 int pnx8xxx_rx_chars (struct pnx8xxx_port*) ;
 int pnx8xxx_tx_chars (struct pnx8xxx_port*) ;
 unsigned int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t pnx8xxx_int(int irq, void *dev_id)
{
 struct pnx8xxx_port *sport = dev_id;
 unsigned int status;

 spin_lock(&sport->port.lock);

 status = serial_in(sport, PNX8XXX_ISTAT) & serial_in(sport, PNX8XXX_IEN);


 if (status & (PNX8XXX_UART_INT_RX | PNX8XXX_UART_INT_BREAK))
  pnx8xxx_rx_chars(sport);


 if (status & PNX8XXX_UART_INT_TX)
  pnx8xxx_tx_chars(sport);


 serial_out(sport, PNX8XXX_ICLR, status);

 spin_unlock(&sport->port.lock);
 return IRQ_HANDLED;
}
