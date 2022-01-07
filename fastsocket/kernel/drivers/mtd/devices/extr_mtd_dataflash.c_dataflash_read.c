
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef int u_char ;
struct spi_transfer {unsigned int* tx_buf; int len; int * rx_buf; int tx_dma; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {scalar_t__ size; scalar_t__ priv; } ;
struct dataflash {unsigned int page_size; unsigned int page_offset; unsigned int* command; TYPE_1__* spi; int lock; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int dev; } ;


 int DEBUG (int ,char*,unsigned int,unsigned int,unsigned int,...) ;
 int EINVAL ;
 int MTD_DEBUG_LEVEL1 ;
 int MTD_DEBUG_LEVEL2 ;
 int MTD_DEBUG_LEVEL3 ;
 unsigned int OP_READ_CONTINUOUS ;
 unsigned int dev_name (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
          size_t *retlen, u_char *buf)
{
 struct dataflash *priv = (struct dataflash *)mtd->priv;
 struct spi_transfer x[2] = { { .tx_dma = 0, }, };
 struct spi_message msg;
 unsigned int addr;
 uint8_t *command;
 int status;

 DEBUG(MTD_DEBUG_LEVEL2, "%s: read 0x%x..0x%x\n",
  dev_name(&priv->spi->dev), (unsigned)from, (unsigned)(from + len));

 *retlen = 0;


 if (!len)
  return 0;
 if (from + len > mtd->size)
  return -EINVAL;


 addr = (((unsigned)from / priv->page_size) << priv->page_offset)
  + ((unsigned)from % priv->page_size);

 command = priv->command;

 DEBUG(MTD_DEBUG_LEVEL3, "READ: (%x) %x %x %x\n",
  command[0], command[1], command[2], command[3]);

 spi_message_init(&msg);

 x[0].tx_buf = command;
 x[0].len = 8;
 spi_message_add_tail(&x[0], &msg);

 x[1].rx_buf = buf;
 x[1].len = len;
 spi_message_add_tail(&x[1], &msg);

 mutex_lock(&priv->lock);





 command[0] = OP_READ_CONTINUOUS;
 command[1] = (uint8_t)(addr >> 16);
 command[2] = (uint8_t)(addr >> 8);
 command[3] = (uint8_t)(addr >> 0);


 status = spi_sync(priv->spi, &msg);
 mutex_unlock(&priv->lock);

 if (status >= 0) {
  *retlen = msg.actual_length - 8;
  status = 0;
 } else
  DEBUG(MTD_DEBUG_LEVEL1, "%s: read %x..%x --> %d\n",
   dev_name(&priv->spi->dev),
   (unsigned)from, (unsigned)(from + len),
   status);
 return status;
}
