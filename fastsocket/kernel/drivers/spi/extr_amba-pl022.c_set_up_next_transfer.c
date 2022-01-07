
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct pl022 {TYPE_3__* cur_chip; void* rx; int read; void* tx; int write; TYPE_2__* cur_transfer; void* rx_end; void* tx_end; TYPE_1__* adev; } ;
struct TYPE_6__ {int n_bytes; int read; int write; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int READING_NULL ;
 int WRITING_NULL ;
 int dev_err (int *,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_up_next_transfer(struct pl022 *pl022,
    struct spi_transfer *transfer)
{
 int residue;


 residue = pl022->cur_transfer->len % pl022->cur_chip->n_bytes;
 if (unlikely(residue != 0)) {
  dev_err(&pl022->adev->dev,
   "message of %u bytes to transmit but the current "
   "chip bus has a data width of %u bytes!\n",
   pl022->cur_transfer->len,
   pl022->cur_chip->n_bytes);
  dev_err(&pl022->adev->dev, "skipping this message\n");
  return -EIO;
 }
 pl022->tx = (void *)transfer->tx_buf;
 pl022->tx_end = pl022->tx + pl022->cur_transfer->len;
 pl022->rx = (void *)transfer->rx_buf;
 pl022->rx_end = pl022->rx + pl022->cur_transfer->len;
 pl022->write =
     pl022->tx ? pl022->cur_chip->write : WRITING_NULL;
 pl022->read = pl022->rx ? pl022->cur_chip->read : READING_NULL;
 return 0;
}
