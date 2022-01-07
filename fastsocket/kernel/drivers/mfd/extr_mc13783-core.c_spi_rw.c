
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {void const* tx_buf; size_t len; int delay_usecs; int cs_change; int * rx_buf; } ;
struct spi_message {scalar_t__ status; int actual_length; } ;
struct spi_device {int dummy; } ;


 int EINVAL ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 scalar_t__ spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static inline int spi_rw(struct spi_device *spi, u8 * buf, size_t len)
{
 struct spi_transfer t = {
  .tx_buf = (const void *)buf,
  .rx_buf = buf,
  .len = len,
  .cs_change = 0,
  .delay_usecs = 0,
 };
 struct spi_message m;

 spi_message_init(&m);
 spi_message_add_tail(&t, &m);
 if (spi_sync(spi, &m) != 0 || m.status != 0)
  return -EINVAL;
 return len - m.actual_length;
}
