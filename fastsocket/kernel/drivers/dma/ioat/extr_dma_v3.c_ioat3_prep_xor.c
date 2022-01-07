
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 struct dma_async_tx_descriptor* __ioat3_prep_xor_lock (struct dma_chan*,int *,int ,int *,unsigned int,size_t,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
ioat3_prep_xor(struct dma_chan *chan, dma_addr_t dest, dma_addr_t *src,
        unsigned int src_cnt, size_t len, unsigned long flags)
{
 return __ioat3_prep_xor_lock(chan, ((void*)0), dest, src, src_cnt, len, flags);
}
