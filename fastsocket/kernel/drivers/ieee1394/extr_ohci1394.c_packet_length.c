
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_rcv_ctx {scalar_t__ type; int buf_size; int num_desc; int ** buf_cpu; } ;
typedef int quadlet_t ;


 scalar_t__ DMA_CTX_ASYNC_REQ ;
 scalar_t__ DMA_CTX_ASYNC_RESP ;
 scalar_t__ DMA_CTX_ISO ;
 int* TCODE_SIZE ;
 int cond_le32_to_cpu (int ,int) ;

__attribute__((used)) static inline int packet_length(struct dma_rcv_ctx *d, int idx,
    quadlet_t *buf_ptr, int offset,
    unsigned char tcode, int noswap)
{
 int length = -1;

 if (d->type == DMA_CTX_ASYNC_REQ || d->type == DMA_CTX_ASYNC_RESP) {
  length = TCODE_SIZE[tcode];
  if (length == 0) {
   if (offset + 12 >= d->buf_size) {
    length = (cond_le32_to_cpu(d->buf_cpu[(idx + 1) % d->num_desc]
      [3 - ((d->buf_size - offset) >> 2)], noswap) >> 16);
   } else {
    length = (cond_le32_to_cpu(buf_ptr[3], noswap) >> 16);
   }
   length += 20;
  }
 } else if (d->type == DMA_CTX_ISO) {

  length = (cond_le32_to_cpu(buf_ptr[0], noswap) >> 16) + 8;
 }

 if (length > 0 && length % 4)
  length += 4 - (length % 4);

 return length;
}
