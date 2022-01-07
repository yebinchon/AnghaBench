
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {int master; } ;
struct butterfly {TYPE_1__ bitbang; int pd; struct parport* port; } ;


 struct butterfly* butterfly ;
 int msleep (int) ;
 int parport_release (int ) ;
 int parport_unregister_device (int ) ;
 int parport_write_data (struct parport*,int ) ;
 int spi_bitbang_stop (TYPE_1__*) ;
 int spi_master_put (int ) ;

__attribute__((used)) static void butterfly_detach(struct parport *p)
{
 struct butterfly *pp;
 int status;





 if (!butterfly || butterfly->port != p)
  return;
 pp = butterfly;
 butterfly = ((void*)0);


 status = spi_bitbang_stop(&pp->bitbang);


 parport_write_data(pp->port, 0);
 msleep(10);

 parport_release(pp->pd);
 parport_unregister_device(pp->pd);

 (void) spi_master_put(pp->bitbang.master);
}
