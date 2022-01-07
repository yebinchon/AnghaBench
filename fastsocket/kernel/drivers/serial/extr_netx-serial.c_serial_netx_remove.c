
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct netx_port {int port; } ;


 int netx_reg ;
 struct netx_port* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int serial_netx_remove(struct platform_device *pdev)
{
 struct netx_port *sport = platform_get_drvdata(pdev);

 platform_set_drvdata(pdev, ((void*)0));

 if (sport)
  uart_remove_one_port(&netx_reg, &sport->port);

 return 0;
}
