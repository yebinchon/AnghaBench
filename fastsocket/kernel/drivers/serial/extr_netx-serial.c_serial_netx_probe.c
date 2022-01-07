
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {scalar_t__ membase; int * dev; } ;
struct platform_device {size_t id; int dev; } ;
struct TYPE_3__ {struct uart_port port; } ;


 scalar_t__ UART_RXFIFO_IRQLEVEL ;
 int dev_info (int *,char*) ;
 TYPE_1__* netx_ports ;
 int netx_reg ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;
 int uart_add_one_port (int *,struct uart_port*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int serial_netx_probe(struct platform_device *pdev)
{
 struct uart_port *port = &netx_ports[pdev->id].port;

 dev_info(&pdev->dev, "initialising\n");

 port->dev = &pdev->dev;

 writel(1, port->membase + UART_RXFIFO_IRQLEVEL);
 uart_add_one_port(&netx_reg, &netx_ports[pdev->id].port);
 platform_set_drvdata(pdev, &netx_ports[pdev->id]);

 return 0;
}
