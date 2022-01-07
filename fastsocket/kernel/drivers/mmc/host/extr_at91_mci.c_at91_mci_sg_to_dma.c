
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; int length; } ;
struct mmc_data {unsigned int blksz; unsigned int blocks; unsigned int sg_len; struct scatterlist* sg; } ;
struct at91mci_host {unsigned int* buffer; int total_length; } ;


 int BUG_ON (int) ;
 int KM_BIO_SRC_IRQ ;
 scalar_t__ cpu_is_at91rm9200 () ;
 scalar_t__ cpu_is_at91sam9260 () ;
 scalar_t__ cpu_is_at91sam9263 () ;
 unsigned int* kmap_atomic (int ,int ) ;
 int kunmap_atomic (unsigned int*,int ) ;
 int memcpy (unsigned int*,unsigned int*,int) ;
 int memset (unsigned int*,int ,int) ;
 int min (unsigned int,int ) ;
 int sg_page (struct scatterlist*) ;
 int swab32 (unsigned int) ;

__attribute__((used)) static inline void at91_mci_sg_to_dma(struct at91mci_host *host, struct mmc_data *data)
{
 unsigned int len, i, size;
 unsigned *dmabuf = host->buffer;

 size = data->blksz * data->blocks;
 len = data->sg_len;


 if (cpu_is_at91sam9260() || cpu_is_at91sam9263())
  if (host->total_length == 12)
   memset(dmabuf, 0, 12);






 for (i = 0; i < len; i++) {
  struct scatterlist *sg;
  int amount;
  unsigned int *sgbuffer;

  sg = &data->sg[i];

  sgbuffer = kmap_atomic(sg_page(sg), KM_BIO_SRC_IRQ) + sg->offset;
  amount = min(size, sg->length);
  size -= amount;

  if (cpu_is_at91rm9200()) {
   int index;

   for (index = 0; index < (amount / 4); index++)
    *dmabuf++ = swab32(sgbuffer[index]);
  } else {
   memcpy(dmabuf, sgbuffer, amount);
   dmabuf += amount;
  }

  kunmap_atomic(sgbuffer, KM_BIO_SRC_IRQ);

  if (size == 0)
   break;
 }





 BUG_ON(size != 0);
}
