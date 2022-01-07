
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; int dev; int membase; } ;


 int EBUSY ;
 unsigned int RSET_UART_SIZE ;
 int dev_err (int ,char*) ;
 int ioremap (int ,unsigned int) ;
 int release_mem_region (int ,unsigned int) ;
 int request_mem_region (int ,unsigned int,char*) ;

__attribute__((used)) static int bcm_uart_request_port(struct uart_port *port)
{
 unsigned int size;

 size = RSET_UART_SIZE;
 if (!request_mem_region(port->mapbase, size, "bcm63xx")) {
  dev_err(port->dev, "Memory region busy\n");
  return -EBUSY;
 }

 port->membase = ioremap(port->mapbase, size);
 if (!port->membase) {
  dev_err(port->dev, "Unable to map registers\n");
  release_mem_region(port->mapbase, size);
  return -EBUSY;
 }
 return 0;
}
