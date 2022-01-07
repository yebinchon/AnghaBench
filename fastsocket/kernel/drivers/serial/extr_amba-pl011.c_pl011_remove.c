
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int membase; } ;
struct uart_amba_port {int clk; TYPE_1__ port; } ;
struct amba_device {int dummy; } ;


 int ARRAY_SIZE (struct uart_amba_port**) ;
 struct uart_amba_port* amba_get_drvdata (struct amba_device*) ;
 struct uart_amba_port** amba_ports ;
 int amba_reg ;
 int amba_set_drvdata (struct amba_device*,int *) ;
 int clk_put (int ) ;
 int iounmap (int ) ;
 int kfree (struct uart_amba_port*) ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int pl011_remove(struct amba_device *dev)
{
 struct uart_amba_port *uap = amba_get_drvdata(dev);
 int i;

 amba_set_drvdata(dev, ((void*)0));

 uart_remove_one_port(&amba_reg, &uap->port);

 for (i = 0; i < ARRAY_SIZE(amba_ports); i++)
  if (amba_ports[i] == uap)
   amba_ports[i] = ((void*)0);

 iounmap(uap->port.membase);
 clk_put(uap->clk);
 kfree(uap);
 return 0;
}
