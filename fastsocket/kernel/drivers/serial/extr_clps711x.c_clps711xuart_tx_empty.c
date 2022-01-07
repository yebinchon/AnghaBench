
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int SYSFLG (struct uart_port*) ;
 unsigned int SYSFLG_UBUSY ;
 unsigned int TIOCSER_TEMT ;
 unsigned int clps_readl (int ) ;

__attribute__((used)) static unsigned int clps711xuart_tx_empty(struct uart_port *port)
{
 unsigned int status = clps_readl(SYSFLG(port));
 return status & SYSFLG_UBUSY ? 0 : TIOCSER_TEMT;
}
