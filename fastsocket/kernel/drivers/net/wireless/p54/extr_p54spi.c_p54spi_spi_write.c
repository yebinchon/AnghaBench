
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int t ;
struct spi_transfer {int len; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct p54s_priv {int spi; } ;
typedef int last_word ;
typedef int addr ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static void p54spi_spi_write(struct p54s_priv *priv, u8 address,
        const void *buf, size_t len)
{
 struct spi_transfer t[3];
 struct spi_message m;
 __le16 addr;


 addr = cpu_to_le16(address << 8);

 spi_message_init(&m);
 memset(t, 0, sizeof(t));

 t[0].tx_buf = &addr;
 t[0].len = sizeof(addr);
 spi_message_add_tail(&t[0], &m);

 t[1].tx_buf = buf;
 t[1].len = len & ~1;
 spi_message_add_tail(&t[1], &m);

 if (len % 2) {
  __le16 last_word;
  last_word = cpu_to_le16(((u8 *)buf)[len - 1]);

  t[2].tx_buf = &last_word;
  t[2].len = sizeof(last_word);
  spi_message_add_tail(&t[2], &m);
 }

 spi_sync(priv->spi, &m);
}
