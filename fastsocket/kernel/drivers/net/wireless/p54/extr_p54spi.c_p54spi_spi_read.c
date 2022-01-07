
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int t ;
struct spi_transfer {int len; void* rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct p54s_priv {int spi; } ;
typedef int addr ;
typedef int __le16 ;


 int SPI_ADRS_READ_BIT_15 ;
 int cpu_to_le16 (int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static void p54spi_spi_read(struct p54s_priv *priv, u8 address,
         void *buf, size_t len)
{
 struct spi_transfer t[2];
 struct spi_message m;
 __le16 addr;


 addr = cpu_to_le16(address << 8 | SPI_ADRS_READ_BIT_15);

 spi_message_init(&m);
 memset(t, 0, sizeof(t));

 t[0].tx_buf = &addr;
 t[0].len = sizeof(addr);
 spi_message_add_tail(&t[0], &m);

 t[1].rx_buf = buf;
 t[1].len = len;
 spi_message_add_tail(&t[1], &m);

 spi_sync(priv->spi, &m);
}
