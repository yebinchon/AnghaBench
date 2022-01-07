
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spidev_data {int buffer; } ;
struct spi_transfer {size_t len; int rx_buf; } ;
struct spi_message {int dummy; } ;
typedef int ssize_t ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spidev_sync (struct spidev_data*,struct spi_message*) ;

__attribute__((used)) static inline ssize_t
spidev_sync_read(struct spidev_data *spidev, size_t len)
{
 struct spi_transfer t = {
   .rx_buf = spidev->buffer,
   .len = len,
  };
 struct spi_message m;

 spi_message_init(&m);
 spi_message_add_tail(&t, &m);
 return spidev_sync(spidev, &m);
}
