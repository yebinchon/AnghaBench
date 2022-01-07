
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; int irq; } ;
struct sa1100_port {TYPE_1__ port; } ;


 int UART_PUT_UTCR3 (struct sa1100_port*,int) ;
 int UART_PUT_UTSR0 (struct sa1100_port*,int) ;
 int UTCR3_RIE ;
 int UTCR3_RXE ;
 int UTCR3_TXE ;
 int request_irq (int ,int ,int ,char*,struct sa1100_port*) ;
 int sa1100_enable_ms (TYPE_1__*) ;
 int sa1100_int ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sa1100_startup(struct uart_port *port)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;
 int retval;




 retval = request_irq(sport->port.irq, sa1100_int, 0,
        "sa11x0-uart", sport);
 if (retval)
  return retval;




 UART_PUT_UTSR0(sport, -1);
 UART_PUT_UTCR3(sport, UTCR3_RXE | UTCR3_TXE | UTCR3_RIE);




 spin_lock_irq(&sport->port.lock);
 sa1100_enable_ms(&sport->port);
 spin_unlock_irq(&sport->port.lock);

 return 0;
}
