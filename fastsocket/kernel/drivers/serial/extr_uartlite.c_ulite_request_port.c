
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ mapbase; int dev; int membase; } ;


 int EBUSY ;
 int ULITE_REGION ;
 int dev_err (int ,char*) ;
 int ioremap (scalar_t__,int ) ;
 int pr_debug (char*,struct uart_port*,unsigned long long) ;
 int release_mem_region (scalar_t__,int ) ;
 int request_mem_region (scalar_t__,int ,char*) ;

__attribute__((used)) static int ulite_request_port(struct uart_port *port)
{
 pr_debug("ulite console: port=%p; port->mapbase=%llx\n",
   port, (unsigned long long) port->mapbase);

 if (!request_mem_region(port->mapbase, ULITE_REGION, "uartlite")) {
  dev_err(port->dev, "Memory region busy\n");
  return -EBUSY;
 }

 port->membase = ioremap(port->mapbase, ULITE_REGION);
 if (!port->membase) {
  dev_err(port->dev, "Unable to map registers\n");
  release_mem_region(port->mapbase, ULITE_REGION);
  return -EBUSY;
 }

 return 0;
}
