
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pxa_port {int clk; int port; } ;
struct platform_device {int dummy; } ;


 int clk_put (int ) ;
 int kfree (struct uart_pxa_port*) ;
 struct uart_pxa_port* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int serial_pxa_reg ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int serial_pxa_remove(struct platform_device *dev)
{
 struct uart_pxa_port *sport = platform_get_drvdata(dev);

 platform_set_drvdata(dev, ((void*)0));

 uart_remove_one_port(&serial_pxa_reg, &sport->port);
 clk_put(sport->clk);
 kfree(sport);

 return 0;
}
