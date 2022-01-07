
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifosize; int line; int flags; int membase; int uartclk; int * dev; int * ops; scalar_t__ irq; scalar_t__ mapbase; int iotype; int type; } ;
struct uart_pxa_port {char* name; int clk; TYPE_1__ port; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int id; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_PXA ;
 int PTR_ERR (int ) ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 int UPIO_MEM ;
 int clk_get (int *,int *) ;
 int clk_get_rate (int ) ;
 int clk_put (int ) ;
 int ioremap (scalar_t__,scalar_t__) ;
 int kfree (struct uart_pxa_port*) ;
 struct uart_pxa_port* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_pxa_port*) ;
 int serial_pxa_pops ;
 struct uart_pxa_port** serial_pxa_ports ;
 int serial_pxa_reg ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int serial_pxa_probe(struct platform_device *dev)
{
 struct uart_pxa_port *sport;
 struct resource *mmres, *irqres;
 int ret;

 mmres = platform_get_resource(dev, IORESOURCE_MEM, 0);
 irqres = platform_get_resource(dev, IORESOURCE_IRQ, 0);
 if (!mmres || !irqres)
  return -ENODEV;

 sport = kzalloc(sizeof(struct uart_pxa_port), GFP_KERNEL);
 if (!sport)
  return -ENOMEM;

 sport->clk = clk_get(&dev->dev, ((void*)0));
 if (IS_ERR(sport->clk)) {
  ret = PTR_ERR(sport->clk);
  goto err_free;
 }

 sport->port.type = PORT_PXA;
 sport->port.iotype = UPIO_MEM;
 sport->port.mapbase = mmres->start;
 sport->port.irq = irqres->start;
 sport->port.fifosize = 64;
 sport->port.ops = &serial_pxa_pops;
 sport->port.line = dev->id;
 sport->port.dev = &dev->dev;
 sport->port.flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
 sport->port.uartclk = clk_get_rate(sport->clk);

 switch (dev->id) {
 case 0: sport->name = "FFUART"; break;
 case 1: sport->name = "BTUART"; break;
 case 2: sport->name = "STUART"; break;
 case 3: sport->name = "HWUART"; break;
 default:
  sport->name = "???";
  break;
 }

 sport->port.membase = ioremap(mmres->start, mmres->end - mmres->start + 1);
 if (!sport->port.membase) {
  ret = -ENOMEM;
  goto err_clk;
 }

 serial_pxa_ports[dev->id] = sport;

 uart_add_one_port(&serial_pxa_reg, &sport->port);
 platform_set_drvdata(dev, sport);

 return 0;

 err_clk:
 clk_put(sport->clk);
 err_free:
 kfree(sport);
 return ret;
}
