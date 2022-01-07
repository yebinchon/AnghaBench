
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pxa_port {int clk; } ;
struct uart_port {int dummy; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;

__attribute__((used)) static void
serial_pxa_pm(struct uart_port *port, unsigned int state,
       unsigned int oldstate)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;

 if (!state)
  clk_enable(up->clk);
 else
  clk_disable(up->clk);
}
