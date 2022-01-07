
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int bits_per_word; int len; int rx_buf; int tx_buf; } ;
struct spi_device {int bits_per_word; int master; } ;
struct mpc8xxx_spi {int count; int (* get_tx ) (struct mpc8xxx_spi*) ;TYPE_1__* base; int done; int rx; int tx; } ;
struct TYPE_2__ {int mask; int transmit; } ;


 int EINVAL ;
 int INIT_COMPLETION (int ) ;
 int SPIM_NE ;
 int mpc8xxx_spi_write_reg (int *,int) ;
 struct mpc8xxx_spi* spi_master_get_devdata (int ) ;
 int stub1 (struct mpc8xxx_spi*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mpc8xxx_spi_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct mpc8xxx_spi *mpc8xxx_spi;
 u32 word, len, bits_per_word;

 mpc8xxx_spi = spi_master_get_devdata(spi->master);

 mpc8xxx_spi->tx = t->tx_buf;
 mpc8xxx_spi->rx = t->rx_buf;
 bits_per_word = spi->bits_per_word;
 if (t->bits_per_word)
  bits_per_word = t->bits_per_word;
 len = t->len;
 if (bits_per_word > 8) {

  if (len & 1)
   return -EINVAL;
  len /= 2;
 }
 if (bits_per_word > 16) {

  if (len & 1)
   return -EINVAL;
  len /= 2;
 }
 mpc8xxx_spi->count = len;

 INIT_COMPLETION(mpc8xxx_spi->done);


 mpc8xxx_spi_write_reg(&mpc8xxx_spi->base->mask, SPIM_NE);


 word = mpc8xxx_spi->get_tx(mpc8xxx_spi);
 mpc8xxx_spi_write_reg(&mpc8xxx_spi->base->transmit, word);

 wait_for_completion(&mpc8xxx_spi->done);


 mpc8xxx_spi_write_reg(&mpc8xxx_spi->base->mask, 0);

 return mpc8xxx_spi->count;
}
