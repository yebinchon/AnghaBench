
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int flags; int * membase; int mapbase; } ;
struct mpc52xx_psc {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int UPF_IOREMAP ;
 int * ioremap (int ,int) ;
 int iounmap (int *) ;
 int * request_mem_region (int ,int,char*) ;

__attribute__((used)) static int
mpc52xx_uart_request_port(struct uart_port *port)
{
 int err;

 if (port->flags & UPF_IOREMAP)
  port->membase = ioremap(port->mapbase,
     sizeof(struct mpc52xx_psc));

 if (!port->membase)
  return -EINVAL;

 err = request_mem_region(port->mapbase, sizeof(struct mpc52xx_psc),
   "mpc52xx_psc_uart") != ((void*)0) ? 0 : -EBUSY;

 if (err && (port->flags & UPF_IOREMAP)) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }

 return err;
}
