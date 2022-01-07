
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int master; } ;
struct spi_lm70llp {TYPE_1__ bitbang; int pd; struct parport* port; } ;
struct parport {int dummy; } ;


 struct spi_lm70llp* lm70llp ;
 int parport_release (int ) ;
 int parport_unregister_device (int ) ;
 int parport_write_data (struct parport*,int ) ;
 int spi_bitbang_stop (TYPE_1__*) ;
 int spi_master_put (int ) ;

__attribute__((used)) static void spi_lm70llp_detach(struct parport *p)
{
 struct spi_lm70llp *pp;

 if (!lm70llp || lm70llp->port != p)
  return;

 pp = lm70llp;
 spi_bitbang_stop(&pp->bitbang);


 parport_write_data(pp->port, 0);

 parport_release(pp->pd);
 parport_unregister_device(pp->pd);

 (void) spi_master_put(pp->bitbang.master);

 lm70llp = ((void*)0);
}
