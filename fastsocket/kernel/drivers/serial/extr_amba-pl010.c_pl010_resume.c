
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {int port; } ;
struct amba_device {int dummy; } ;


 struct uart_amba_port* amba_get_drvdata (struct amba_device*) ;
 int amba_reg ;
 int uart_resume_port (int *,int *) ;

__attribute__((used)) static int pl010_resume(struct amba_device *dev)
{
 struct uart_amba_port *uap = amba_get_drvdata(dev);

 if (uap)
  uart_resume_port(&amba_reg, &uap->port);

 return 0;
}
