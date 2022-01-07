
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tle62x0_state {unsigned char* tx_buff; int nr_gpio; int us; int rx_buff; } ;
struct spi_transfer {unsigned char* tx_buf; int len; int rx_buf; } ;
struct spi_message {int dummy; } ;


 unsigned char CMD_READ ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static inline int tle62x0_read(struct tle62x0_state *st)
{
 unsigned char *txbuff = st->tx_buff;
 struct spi_transfer xfer = {
  .tx_buf = txbuff,
  .rx_buf = st->rx_buff,
  .len = (st->nr_gpio * 2) / 8,
 };
 struct spi_message msg;

 txbuff[0] = CMD_READ;
 txbuff[1] = 0x00;
 txbuff[2] = 0x00;
 txbuff[3] = 0x00;

 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(st->us, &msg);
}
