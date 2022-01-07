
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;


 int TIOCMBIT (int ,int ) ;
 int TIOCM_DTR ;
 int TIOCM_LOOP ;
 int TIOCM_OUT1 ;
 int TIOCM_OUT2 ;
 int TIOCM_RTS ;
 scalar_t__ UART011_CR ;
 int UART011_CR_DTR ;
 int UART011_CR_LBE ;
 int UART011_CR_OUT1 ;
 int UART011_CR_OUT2 ;
 int UART011_CR_RTS ;
 unsigned int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void pl011_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int cr;

 cr = readw(uap->port.membase + UART011_CR);







 if (mctrl & TIOCM_RTS) cr |= UART011_CR_RTS; else cr &= ~UART011_CR_RTS;
 if (mctrl & TIOCM_DTR) cr |= UART011_CR_DTR; else cr &= ~UART011_CR_DTR;
 if (mctrl & TIOCM_OUT1) cr |= UART011_CR_OUT1; else cr &= ~UART011_CR_OUT1;
 if (mctrl & TIOCM_OUT2) cr |= UART011_CR_OUT2; else cr &= ~UART011_CR_OUT2;
 if (mctrl & TIOCM_LOOP) cr |= UART011_CR_LBE; else cr &= ~UART011_CR_LBE;


 writew(cr, uap->port.membase + UART011_CR);
}
