
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_sunsu_port {TYPE_1__ port; int ier; } ;
struct uart_port {int dummy; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 int serial_out (struct uart_sunsu_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sunsu_enable_ms(struct uart_port *port)
{
 struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);
 up->ier |= UART_IER_MSI;
 serial_out(up, UART_IER, up->ier);
 spin_unlock_irqrestore(&up->port.lock, flags);
}
