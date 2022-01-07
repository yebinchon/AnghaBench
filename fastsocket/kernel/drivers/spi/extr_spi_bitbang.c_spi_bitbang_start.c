
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_bitbang {int flags; int * workqueue; TYPE_2__* master; scalar_t__ busy; scalar_t__ setup_transfer; scalar_t__ txrx_bufs; scalar_t__ use_dma; int queue; int lock; int work; int chipselect; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {int mode_bits; TYPE_1__ dev; scalar_t__ setup; int cleanup; scalar_t__ transfer; } ;


 int EBUSY ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int bitbang_work ;
 int * create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int *) ;
 int dev_name (int ) ;
 scalar_t__ spi_bitbang_bufs ;
 int spi_bitbang_cleanup ;
 scalar_t__ spi_bitbang_setup ;
 scalar_t__ spi_bitbang_setup_transfer ;
 scalar_t__ spi_bitbang_transfer ;
 int spi_register_master (TYPE_2__*) ;
 int spin_lock_init (int *) ;

int spi_bitbang_start(struct spi_bitbang *bitbang)
{
 int status;

 if (!bitbang->master || !bitbang->chipselect)
  return -EINVAL;

 INIT_WORK(&bitbang->work, bitbang_work);
 spin_lock_init(&bitbang->lock);
 INIT_LIST_HEAD(&bitbang->queue);

 if (!bitbang->master->mode_bits)
  bitbang->master->mode_bits = SPI_CPOL | SPI_CPHA | bitbang->flags;

 if (!bitbang->master->transfer)
  bitbang->master->transfer = spi_bitbang_transfer;
 if (!bitbang->txrx_bufs) {
  bitbang->use_dma = 0;
  bitbang->txrx_bufs = spi_bitbang_bufs;
  if (!bitbang->master->setup) {
   if (!bitbang->setup_transfer)
    bitbang->setup_transfer =
      spi_bitbang_setup_transfer;
   bitbang->master->setup = spi_bitbang_setup;
   bitbang->master->cleanup = spi_bitbang_cleanup;
  }
 } else if (!bitbang->master->setup)
  return -EINVAL;


 bitbang->busy = 0;
 bitbang->workqueue = create_singlethread_workqueue(
   dev_name(bitbang->master->dev.parent));
 if (bitbang->workqueue == ((void*)0)) {
  status = -EBUSY;
  goto err1;
 }




 status = spi_register_master(bitbang->master);
 if (status < 0)
  goto err2;

 return status;

err2:
 destroy_workqueue(bitbang->workqueue);
err1:
 return status;
}
