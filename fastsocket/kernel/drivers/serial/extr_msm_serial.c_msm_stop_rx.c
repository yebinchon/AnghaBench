
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct msm_port {int imr; } ;


 int UART_IMR ;
 int UART_IMR_RXLEV ;
 int UART_IMR_RXSTALE ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int msm_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void msm_stop_rx(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);

 msm_port->imr &= ~(UART_IMR_RXLEV | UART_IMR_RXSTALE);
 msm_write(port, msm_port->imr, UART_IMR);
}
