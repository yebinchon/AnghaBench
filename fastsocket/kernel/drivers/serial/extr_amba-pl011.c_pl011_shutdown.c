
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; int irq; int lock; } ;
struct uart_amba_port {unsigned long im; int clk; TYPE_1__ port; } ;


 scalar_t__ UART011_CR ;
 unsigned long UART011_CR_TXE ;
 scalar_t__ UART011_ICR ;
 scalar_t__ UART011_IMSC ;
 scalar_t__ UART011_LCRH ;
 unsigned long UART01x_CR_UARTEN ;
 unsigned long UART01x_LCRH_BRK ;
 unsigned long UART01x_LCRH_FEN ;
 int clk_disable (int ) ;
 int free_irq (int ,struct uart_amba_port*) ;
 unsigned long readw (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writew (unsigned long,scalar_t__) ;

__attribute__((used)) static void pl011_shutdown(struct uart_port *port)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned long val;




 spin_lock_irq(&uap->port.lock);
 uap->im = 0;
 writew(uap->im, uap->port.membase + UART011_IMSC);
 writew(0xffff, uap->port.membase + UART011_ICR);
 spin_unlock_irq(&uap->port.lock);




 free_irq(uap->port.irq, uap);




 writew(UART01x_CR_UARTEN | UART011_CR_TXE, uap->port.membase + UART011_CR);




 val = readw(uap->port.membase + UART011_LCRH);
 val &= ~(UART01x_LCRH_BRK | UART01x_LCRH_FEN);
 writew(val, uap->port.membase + UART011_LCRH);




 clk_disable(uap->clk);
}
