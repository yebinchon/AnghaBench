
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;
struct msm_port {int clk; scalar_t__ imr; } ;


 int UART_IMR ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int clk_disable (int ) ;
 int free_irq (int ,struct uart_port*) ;
 int msm_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static void msm_shutdown(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);

 msm_port->imr = 0;
 msm_write(port, 0, UART_IMR);

 clk_disable(msm_port->clk);

 free_irq(port->irq, port);
}
