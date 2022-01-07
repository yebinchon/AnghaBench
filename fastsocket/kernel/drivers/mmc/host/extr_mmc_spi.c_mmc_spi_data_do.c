
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int speed_hz; unsigned int len; void* rx_buf; void* tx_buf; void* rx_dma; void* tx_dma; } ;
struct spi_device {int max_speed_hz; int dev; } ;
struct scratch {scalar_t__* status; } ;
struct scatterlist {unsigned int length; scalar_t__ offset; } ;
struct TYPE_4__ {int transfers; } ;
struct TYPE_3__ {unsigned int len; int rx_dma; int tx_dma; int rx_buf; int tx_buf; int transfer_list; } ;
struct mmc_spi_host {int data_dma; struct device* dma_dev; TYPE_2__ m; TYPE_1__ early_status; struct scratch* data; struct spi_device* spi; struct spi_transfer t; } ;
struct mmc_data {int blocks; int flags; int timeout_ns; int timeout_clks; unsigned int sg_len; unsigned int bytes_xfered; int error; struct scatterlist* sg; } ;
struct mmc_command {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef void* dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int INIT_LIST_HEAD (int *) ;
 int MMC_DATA_READ ;
 unsigned int PAGE_SIZE ;
 scalar_t__ SPI_TOKEN_STOP_TRAN ;
 int dev_dbg (int *,char*,...) ;
 void* dma_map_page (struct device*,int ,int ,unsigned int,int) ;
 int dma_sync_single_for_cpu (struct device*,int ,int,int) ;
 int dma_sync_single_for_device (struct device*,int ,int,int) ;
 int dma_unmap_page (struct device*,void*,unsigned int,int) ;
 int flush_kernel_dcache_page (int ) ;
 void* kmap (int ) ;
 int kunmap (int ) ;
 int list_add (int *,int *) ;
 int memset (scalar_t__*,int,unsigned int const) ;
 unsigned int min (unsigned int,int) ;
 int mmc_spi_readblock (struct mmc_spi_host*,struct spi_transfer*,unsigned long) ;
 int mmc_spi_setup_data_message (struct mmc_spi_host*,int,int) ;
 int mmc_spi_wait_unbusy (struct mmc_spi_host*,unsigned long) ;
 int mmc_spi_writeblock (struct mmc_spi_host*,struct spi_transfer*,unsigned long) ;
 int sg_page (struct scatterlist*) ;
 int spi_sync (struct spi_device*,TYPE_2__*) ;
 int usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static void
mmc_spi_data_do(struct mmc_spi_host *host, struct mmc_command *cmd,
  struct mmc_data *data, u32 blk_size)
{
 struct spi_device *spi = host->spi;
 struct device *dma_dev = host->dma_dev;
 struct spi_transfer *t;
 enum dma_data_direction direction;
 struct scatterlist *sg;
 unsigned n_sg;
 int multiple = (data->blocks > 1);
 u32 clock_rate;
 unsigned long timeout;

 if (data->flags & MMC_DATA_READ)
  direction = DMA_FROM_DEVICE;
 else
  direction = DMA_TO_DEVICE;
 mmc_spi_setup_data_message(host, multiple, direction);
 t = &host->t;

 if (t->speed_hz)
  clock_rate = t->speed_hz;
 else
  clock_rate = spi->max_speed_hz;

 timeout = data->timeout_ns +
    data->timeout_clks * 1000000 / clock_rate;
 timeout = usecs_to_jiffies((unsigned int)(timeout / 1000)) + 1;




 for (sg = data->sg, n_sg = data->sg_len; n_sg; n_sg--, sg++) {
  int status = 0;
  dma_addr_t dma_addr = 0;
  void *kmap_addr;
  unsigned length = sg->length;
  enum dma_data_direction dir = direction;




  if (dma_dev) {

   if ((sg->offset != 0 || length != PAGE_SIZE)
     && dir == DMA_FROM_DEVICE)
    dir = DMA_BIDIRECTIONAL;

   dma_addr = dma_map_page(dma_dev, sg_page(sg), 0,
      PAGE_SIZE, dir);
   if (direction == DMA_TO_DEVICE)
    t->tx_dma = dma_addr + sg->offset;
   else
    t->rx_dma = dma_addr + sg->offset;
  }


  kmap_addr = kmap(sg_page(sg));
  if (direction == DMA_TO_DEVICE)
   t->tx_buf = kmap_addr + sg->offset;
  else
   t->rx_buf = kmap_addr + sg->offset;


  while (length) {
   t->len = min(length, blk_size);

   dev_dbg(&host->spi->dev,
    "    mmc_spi: %s block, %d bytes\n",
    (direction == DMA_TO_DEVICE)
    ? "write"
    : "read",
    t->len);

   if (direction == DMA_TO_DEVICE)
    status = mmc_spi_writeblock(host, t, timeout);
   else
    status = mmc_spi_readblock(host, t, timeout);
   if (status < 0)
    break;

   data->bytes_xfered += t->len;
   length -= t->len;

   if (!multiple)
    break;
  }


  if (direction == DMA_FROM_DEVICE)
   flush_kernel_dcache_page(sg_page(sg));
  kunmap(sg_page(sg));
  if (dma_dev)
   dma_unmap_page(dma_dev, dma_addr, PAGE_SIZE, dir);

  if (status < 0) {
   data->error = status;
   dev_dbg(&spi->dev, "%s status %d\n",
    (direction == DMA_TO_DEVICE)
     ? "write" : "read",
    status);
   break;
  }
 }







 if (direction == DMA_TO_DEVICE && multiple) {
  struct scratch *scratch = host->data;
  int tmp;
  const unsigned statlen = sizeof(scratch->status);

  dev_dbg(&spi->dev, "    mmc_spi: STOP_TRAN\n");






  INIT_LIST_HEAD(&host->m.transfers);
  list_add(&host->early_status.transfer_list,
    &host->m.transfers);

  memset(scratch->status, 0xff, statlen);
  scratch->status[0] = SPI_TOKEN_STOP_TRAN;

  host->early_status.tx_buf = host->early_status.rx_buf;
  host->early_status.tx_dma = host->early_status.rx_dma;
  host->early_status.len = statlen;

  if (host->dma_dev)
   dma_sync_single_for_device(host->dma_dev,
     host->data_dma, sizeof(*scratch),
     DMA_BIDIRECTIONAL);

  tmp = spi_sync(spi, &host->m);

  if (host->dma_dev)
   dma_sync_single_for_cpu(host->dma_dev,
     host->data_dma, sizeof(*scratch),
     DMA_BIDIRECTIONAL);

  if (tmp < 0) {
   if (!data->error)
    data->error = tmp;
   return;
  }





  for (tmp = 2; tmp < statlen; tmp++) {
   if (scratch->status[tmp] != 0)
    return;
  }
  tmp = mmc_spi_wait_unbusy(host, timeout);
  if (tmp < 0 && !data->error)
   data->error = tmp;
 }
}
