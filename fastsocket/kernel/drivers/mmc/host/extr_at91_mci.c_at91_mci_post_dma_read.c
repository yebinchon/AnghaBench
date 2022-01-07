
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int offset; int dma_address; } ;
struct mmc_data {scalar_t__ sg_len; int bytes_xfered; struct scatterlist* sg; } ;
struct mmc_command {struct mmc_data* data; } ;
struct at91mci_host {scalar_t__ in_use_index; scalar_t__ transfer_index; struct mmc_command* cmd; } ;


 int AT91_MCI_ENDRX ;
 int AT91_MCI_IDR ;
 int AT91_MCI_IER ;
 int AT91_MCI_RXBUFF ;
 int DMA_FROM_DEVICE ;
 int KM_BIO_SRC_IRQ ;
 int at91_mci_pre_dma_read (struct at91mci_host*) ;
 int at91_mci_write (struct at91mci_host*,int ,int ) ;
 scalar_t__ cpu_is_at91rm9200 () ;
 int dma_unmap_page (int *,int ,int,int ) ;
 int flush_dcache_page (int ) ;
 unsigned int* kmap_atomic (int ,int ) ;
 int kunmap_atomic (unsigned int*,int ) ;
 int pr_debug (char*,...) ;
 int sg_page (struct scatterlist*) ;
 unsigned int swab32 (unsigned int) ;

__attribute__((used)) static void at91_mci_post_dma_read(struct at91mci_host *host)
{
 struct mmc_command *cmd;
 struct mmc_data *data;

 pr_debug("post dma read\n");

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

 while (host->in_use_index < host->transfer_index) {
  struct scatterlist *sg;

  pr_debug("finishing index %d\n", host->in_use_index);

  sg = &data->sg[host->in_use_index++];

  pr_debug("Unmapping page %08X\n", sg->dma_address);

  dma_unmap_page(((void*)0), sg->dma_address, sg->length, DMA_FROM_DEVICE);

  if (cpu_is_at91rm9200()) {
   unsigned int *buffer;
   int index;


   buffer = kmap_atomic(sg_page(sg), KM_BIO_SRC_IRQ) + sg->offset;
   pr_debug("buffer = %p, length = %d\n", buffer, sg->length);

   for (index = 0; index < (sg->length / 4); index++)
    buffer[index] = swab32(buffer[index]);

   kunmap_atomic(buffer, KM_BIO_SRC_IRQ);
  }

  flush_dcache_page(sg_page(sg));

  data->bytes_xfered += sg->length;
 }


 if (host->transfer_index < data->sg_len)
  at91_mci_pre_dma_read(host);
 else {
  at91_mci_write(host, AT91_MCI_IDR, AT91_MCI_ENDRX);
  at91_mci_write(host, AT91_MCI_IER, AT91_MCI_RXBUFF);
 }

 pr_debug("post dma read done\n");
}
