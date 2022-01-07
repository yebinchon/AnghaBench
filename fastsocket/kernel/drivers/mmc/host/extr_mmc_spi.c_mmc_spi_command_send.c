
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct spi_transfer {int len; int cs_change; int rx_dma; int tx_dma; int rx_buf; int tx_buf; } ;
struct scratch {void** status; } ;
struct TYPE_8__ {int is_dma_mapped; } ;
struct mmc_spi_host {TYPE_2__* spi; int data_dma; scalar_t__ dma_dev; TYPE_3__ m; struct spi_transfer t; struct scratch* data; } ;
struct mmc_request {TYPE_1__* data; } ;
struct mmc_command {int arg; int opcode; int flags; int error; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int flags; } ;


 int DMA_BIDIRECTIONAL ;
 int MMC_DATA_READ ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_SPI_B4 ;
 int MMC_RSP_SPI_S2 ;
 int crc7 (int ,void**,int) ;
 int dev_dbg (int *,char*,int,...) ;
 int dma_sync_single_for_cpu (scalar_t__,int ,int,int ) ;
 int dma_sync_single_for_device (scalar_t__,int ,int,int ) ;
 int maptype (struct mmc_command*) ;
 int memset (struct spi_transfer*,int,int) ;
 int mmc_spi_response_get (struct mmc_spi_host*,struct mmc_command*,int) ;
 int spi_message_add_tail (struct spi_transfer*,TYPE_3__*) ;
 int spi_message_init (TYPE_3__*) ;
 int spi_sync (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int
mmc_spi_command_send(struct mmc_spi_host *host,
  struct mmc_request *mrq,
  struct mmc_command *cmd, int cs_on)
{
 struct scratch *data = host->data;
 u8 *cp = data->status;
 u32 arg = cmd->arg;
 int status;
 struct spi_transfer *t;
 memset(cp++, 0xff, sizeof(data->status));

 *cp++ = 0x40 | cmd->opcode;
 *cp++ = (u8)(arg >> 24);
 *cp++ = (u8)(arg >> 16);
 *cp++ = (u8)(arg >> 8);
 *cp++ = (u8)arg;
 *cp++ = (crc7(0, &data->status[1], 5) << 1) | 0x01;
 if (cs_on && (mrq->data->flags & MMC_DATA_READ)) {
  cp += 2;

 } else {
  cp += 10;
  if (cmd->flags & MMC_RSP_SPI_S2)
   cp++;
  else if (cmd->flags & MMC_RSP_SPI_B4)
   cp += 4;
  else if (cmd->flags & MMC_RSP_BUSY)
   cp = data->status + sizeof(data->status);

 }

 dev_dbg(&host->spi->dev, "  mmc_spi: CMD%d, resp %s\n",
  cmd->opcode, maptype(cmd));


 spi_message_init(&host->m);

 t = &host->t;
 memset(t, 0, sizeof(*t));
 t->tx_buf = t->rx_buf = data->status;
 t->tx_dma = t->rx_dma = host->data_dma;
 t->len = cp - data->status;
 t->cs_change = 1;
 spi_message_add_tail(t, &host->m);

 if (host->dma_dev) {
  host->m.is_dma_mapped = 1;
  dma_sync_single_for_device(host->dma_dev,
    host->data_dma, sizeof(*host->data),
    DMA_BIDIRECTIONAL);
 }
 status = spi_sync(host->spi, &host->m);

 if (host->dma_dev)
  dma_sync_single_for_cpu(host->dma_dev,
    host->data_dma, sizeof(*host->data),
    DMA_BIDIRECTIONAL);
 if (status < 0) {
  dev_dbg(&host->spi->dev, "  ... write returned %d\n", status);
  cmd->error = status;
  return status;
 }


 return mmc_spi_response_get(host, cmd, cs_on);
}
