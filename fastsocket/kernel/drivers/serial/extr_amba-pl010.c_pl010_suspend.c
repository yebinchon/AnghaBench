
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int port; } ;
struct amba_device {int dummy; } ;
typedef int pm_message_t ;


 struct uart_amba_port* amba_get_drvdata (struct amba_device*) ;
 int amba_reg ;
 int uart_suspend_port (int *,int *) ;

__attribute__((used)) static int pl010_suspend(struct amba_device *dev, pm_message_t state)
{
 struct uart_amba_port *uap = amba_get_drvdata(dev);

 if (uap)
  uart_suspend_port(&amba_reg, &uap->port);

 return 0;
}
