
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct pcap_chip {scalar_t__ buf; int spi; } ;


 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int ezx_pcap_putget(struct pcap_chip *pcap, u32 *data)
{
 struct spi_transfer t;
 struct spi_message m;
 int status;

 memset(&t, 0, sizeof t);
 spi_message_init(&m);
 t.len = sizeof(u32);
 spi_message_add_tail(&t, &m);

 pcap->buf = *data;
 t.tx_buf = (u8 *) &pcap->buf;
 t.rx_buf = (u8 *) &pcap->buf;
 status = spi_sync(pcap->spi, &m);

 if (status == 0)
  *data = pcap->buf;

 return status;
}
