
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; int * membase; } ;
struct sbd_port {int * memctrl; struct sbd_duart* duart; } ;
struct sbd_duart {int mapctrl; int map_guard; } ;


 int DUART_CHANREG_SPACING ;
 int atomic_add_return (int,int *) ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;
 struct sbd_port* to_sport (struct uart_port*) ;

__attribute__((used)) static void sbd_release_port(struct uart_port *uport)
{
 struct sbd_port *sport = to_sport(uport);
 struct sbd_duart *duart = sport->duart;
 int map_guard;

 iounmap(sport->memctrl);
 sport->memctrl = ((void*)0);
 iounmap(uport->membase);
 uport->membase = ((void*)0);

 map_guard = atomic_add_return(-1, &duart->map_guard);
 if (!map_guard)
  release_mem_region(duart->mapctrl, DUART_CHANREG_SPACING);
 release_mem_region(uport->mapbase, DUART_CHANREG_SPACING);
}
