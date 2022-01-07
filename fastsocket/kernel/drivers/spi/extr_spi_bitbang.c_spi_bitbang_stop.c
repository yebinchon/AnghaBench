
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_bitbang {int workqueue; int queue; int master; } ;


 int WARN_ON (int) ;
 int destroy_workqueue (int ) ;
 int list_empty (int *) ;
 int spi_unregister_master (int ) ;

int spi_bitbang_stop(struct spi_bitbang *bitbang)
{
 spi_unregister_master(bitbang->master);

 WARN_ON(!list_empty(&bitbang->queue));

 destroy_workqueue(bitbang->workqueue);

 return 0;
}
