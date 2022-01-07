
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct spi_transfer {unsigned int len; int const* tx_buf; int const* rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
typedef int DEFINE_MUTEX ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int SPI_BUFSIZ ;
 int const* buf ;
 int kfree (int const*) ;
 int const* kmalloc (unsigned int,int ) ;
 int memcpy (int const*,int const*,unsigned int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

int spi_write_then_read(struct spi_device *spi,
  const u8 *txbuf, unsigned n_tx,
  u8 *rxbuf, unsigned n_rx)
{
 static DEFINE_MUTEX(lock);

 int status;
 struct spi_message message;
 struct spi_transfer x[2];
 u8 *local_buf;





 if ((n_tx + n_rx) > SPI_BUFSIZ)
  return -EINVAL;

 spi_message_init(&message);
 memset(x, 0, sizeof x);
 if (n_tx) {
  x[0].len = n_tx;
  spi_message_add_tail(&x[0], &message);
 }
 if (n_rx) {
  x[1].len = n_rx;
  spi_message_add_tail(&x[1], &message);
 }


 if (!mutex_trylock(&lock)) {
  local_buf = kmalloc(SPI_BUFSIZ, GFP_KERNEL);
  if (!local_buf)
   return -ENOMEM;
 } else
  local_buf = buf;

 memcpy(local_buf, txbuf, n_tx);
 x[0].tx_buf = local_buf;
 x[1].rx_buf = local_buf + n_tx;


 status = spi_sync(spi, &message);
 if (status == 0)
  memcpy(rxbuf, x[1].rx_buf, n_rx);

 if (x[0].tx_buf == buf)
  mutex_unlock(&lock);
 else
  kfree(local_buf);

 return status;
}
