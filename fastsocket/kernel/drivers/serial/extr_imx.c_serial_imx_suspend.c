
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_port {int port; } ;
typedef int pm_message_t ;


 int imx_reg ;
 struct imx_port* platform_get_drvdata (struct platform_device*) ;
 int uart_suspend_port (int *,int *) ;

__attribute__((used)) static int serial_imx_suspend(struct platform_device *dev, pm_message_t state)
{
 struct imx_port *sport = platform_get_drvdata(dev);

 if (sport)
  uart_suspend_port(&imx_reg, &sport->port);

 return 0;
}
