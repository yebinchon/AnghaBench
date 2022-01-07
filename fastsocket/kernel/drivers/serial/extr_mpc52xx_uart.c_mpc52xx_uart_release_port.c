
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int mapbase; int * membase; } ;
struct mpc52xx_psc {int dummy; } ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int release_mem_region (int ,int) ;

__attribute__((used)) static void
mpc52xx_uart_release_port(struct uart_port *port)
{

 if (port->flags & UPF_IOREMAP) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }

 release_mem_region(port->mapbase, sizeof(struct mpc52xx_psc));
}
