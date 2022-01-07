
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {scalar_t__ len; int tx_dma; int tx_buf; } ;
struct spi_device {int dev; } ;
struct scratch {int* status; int crc_val; } ;
struct mmc_spi_host {scalar_t__ dma_dev; int data_dma; int m; TYPE_1__* mmc; struct scratch* data; struct spi_device* spi; } ;
struct TYPE_2__ {scalar_t__ use_spi_crc; } ;


 int DMA_BIDIRECTIONAL ;
 int EILSEQ ;
 int EIO ;
 int EPROTO ;



 int cpu_to_be16 (int ) ;
 int crc_itu_t (int ,int ,scalar_t__) ;
 int dev_dbg (int *,char*,int,...) ;
 int dma_sync_single_for_cpu (scalar_t__,int ,int,int ) ;
 int dma_sync_single_for_device (scalar_t__,int ,int,int ) ;
 int mmc_spi_wait_unbusy (struct mmc_spi_host*,unsigned long) ;
 int spi_sync (struct spi_device*,int *) ;

__attribute__((used)) static int
mmc_spi_writeblock(struct mmc_spi_host *host, struct spi_transfer *t,
 unsigned long timeout)
{
 struct spi_device *spi = host->spi;
 int status, i;
 struct scratch *scratch = host->data;
 u32 pattern;

 if (host->mmc->use_spi_crc)
  scratch->crc_val = cpu_to_be16(
    crc_itu_t(0, t->tx_buf, t->len));
 if (host->dma_dev)
  dma_sync_single_for_device(host->dma_dev,
    host->data_dma, sizeof(*scratch),
    DMA_BIDIRECTIONAL);

 status = spi_sync(spi, &host->m);

 if (status != 0) {
  dev_dbg(&spi->dev, "write error (%d)\n", status);
  return status;
 }

 if (host->dma_dev)
  dma_sync_single_for_cpu(host->dma_dev,
    host->data_dma, sizeof(*scratch),
    DMA_BIDIRECTIONAL);
 pattern = scratch->status[0] << 24;
 pattern |= scratch->status[1] << 16;
 pattern |= scratch->status[2] << 8;
 pattern |= scratch->status[3];


 pattern |= 0xE0000000;


 while (pattern & 0x80000000)
  pattern <<= 1;

 pattern >>= 27;

 switch (pattern) {
 case 130:
  status = 0;
  break;
 case 129:

  status = -EILSEQ;
  break;
 case 128:



  status = -EIO;
  break;
 default:
  status = -EPROTO;
  break;
 }
 if (status != 0) {
  dev_dbg(&spi->dev, "write error %02x (%d)\n",
   scratch->status[0], status);
  return status;
 }

 t->tx_buf += t->len;
 if (host->dma_dev)
  t->tx_dma += t->len;




 for (i = 4; i < sizeof(scratch->status); i++) {

  if (scratch->status[i] & 0x01)
   return 0;
 }
 return mmc_spi_wait_unbusy(host, timeout);
}
