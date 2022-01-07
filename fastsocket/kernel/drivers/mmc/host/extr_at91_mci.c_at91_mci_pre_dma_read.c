
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dma_address; int length; int offset; } ;
struct mmc_data {scalar_t__ sg_len; int blksz; struct scatterlist* sg; } ;
struct mmc_command {struct mmc_data* data; } ;
struct at91mci_host {scalar_t__ transfer_index; struct mmc_command* cmd; } ;


 int ATMEL_PDC_RCR ;
 int ATMEL_PDC_RNCR ;
 int ATMEL_PDC_RNPR ;
 int ATMEL_PDC_RPR ;
 int DMA_FROM_DEVICE ;
 scalar_t__ at91_mci_read (struct at91mci_host*,int ) ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;
 int dma_map_page (int *,int ,int ,int,int ) ;
 int pr_debug (char*,...) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void at91_mci_pre_dma_read(struct at91mci_host *host)
{
 int i;
 struct scatterlist *sg;
 struct mmc_command *cmd;
 struct mmc_data *data;

 pr_debug("pre dma read\n");

 cmd = host->cmd;
 if (!cmd) {
  pr_debug("no command\n");
  return;
 }

 data = cmd->data;
 if (!data) {
  pr_debug("no data\n");
  return;
 }

 for (i = 0; i < 2; i++) {

  if (host->transfer_index >= data->sg_len) {
   pr_debug("Nothing left to transfer (index = %d)\n", host->transfer_index);
   break;
  }


  if (i == 0) {
   if (at91_mci_read(host, ATMEL_PDC_RCR) != 0) {
    pr_debug("Transfer active in current\n");
    continue;
   }
  }
  else {
   if (at91_mci_read(host, ATMEL_PDC_RNCR) != 0) {
    pr_debug("Transfer active in next\n");
    continue;
   }
  }


  pr_debug("Using transfer index %d\n", host->transfer_index);

  sg = &data->sg[host->transfer_index++];
  pr_debug("sg = %p\n", sg);

  sg->dma_address = dma_map_page(((void*)0), sg_page(sg), sg->offset, sg->length, DMA_FROM_DEVICE);

  pr_debug("dma address = %08X, length = %d\n", sg->dma_address, sg->length);

  if (i == 0) {
   at91_mci_write(host, ATMEL_PDC_RPR, sg->dma_address);
   at91_mci_write(host, ATMEL_PDC_RCR, (data->blksz & 0x3) ? sg->length : sg->length / 4);
  }
  else {
   at91_mci_write(host, ATMEL_PDC_RNPR, sg->dma_address);
   at91_mci_write(host, ATMEL_PDC_RNCR, (data->blksz & 0x3) ? sg->length : sg->length / 4);
  }
 }

 pr_debug("pre dma read done\n");
}
