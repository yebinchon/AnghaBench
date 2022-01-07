
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; char* rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_3__ {unsigned int size; } ;
struct at25_data {int addrlen; int lock; TYPE_2__* spi; TYPE_1__ bin; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int dev; } ;


 int AT25_READ ;
 int EE_MAXADDRLEN ;
 int dev_dbg (int *,char*,size_t,unsigned int,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 size_t spi_sync (TYPE_2__*,struct spi_message*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t
at25_ee_read(
 struct at25_data *at25,
 char *buf,
 unsigned offset,
 size_t count
)
{
 u8 command[EE_MAXADDRLEN + 1];
 u8 *cp;
 ssize_t status;
 struct spi_transfer t[2];
 struct spi_message m;

 if (unlikely(offset >= at25->bin.size))
  return 0;
 if ((offset + count) > at25->bin.size)
  count = at25->bin.size - offset;
 if (unlikely(!count))
  return count;

 cp = command;
 *cp++ = AT25_READ;


 switch (at25->addrlen) {
 default:
  *cp++ = offset >> 16;
 case 2:
  *cp++ = offset >> 8;
 case 1:
 case 0:
  *cp++ = offset >> 0;
 }

 spi_message_init(&m);
 memset(t, 0, sizeof t);

 t[0].tx_buf = command;
 t[0].len = at25->addrlen + 1;
 spi_message_add_tail(&t[0], &m);

 t[1].rx_buf = buf;
 t[1].len = count;
 spi_message_add_tail(&t[1], &m);

 mutex_lock(&at25->lock);







 status = spi_sync(at25->spi, &m);
 dev_dbg(&at25->spi->dev,
  "read %Zd bytes at %d --> %d\n",
  count, offset, (int) status);

 mutex_unlock(&at25->lock);
 return status ? status : count;
}
