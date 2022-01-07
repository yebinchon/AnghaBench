
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; int irq; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;


 int PNX8XXX_ICLR ;
 int PNX8XXX_IEN ;
 int PNX8XXX_UART_INT_ALLRX ;
 int PNX8XXX_UART_INT_ALLTX ;
 int pnx8xxx_enable_ms (TYPE_1__*) ;
 int pnx8xxx_int ;
 int request_irq (int ,int ,int ,char*,struct pnx8xxx_port*) ;
 int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int pnx8xxx_startup(struct uart_port *port)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
 int retval;




 retval = request_irq(sport->port.irq, pnx8xxx_int, 0,
        "pnx8xxx-uart", sport);
 if (retval)
  return retval;





 serial_out(sport, PNX8XXX_ICLR, PNX8XXX_UART_INT_ALLRX |
        PNX8XXX_UART_INT_ALLTX);

 serial_out(sport, PNX8XXX_IEN, serial_in(sport, PNX8XXX_IEN) |
       PNX8XXX_UART_INT_ALLRX |
       PNX8XXX_UART_INT_ALLTX);




 spin_lock_irq(&sport->port.lock);
 pnx8xxx_enable_ms(&sport->port);
 spin_unlock_irq(&sport->port.lock);

 return 0;
}
