
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_chan {int dummy; } ;
struct async_submit_ctl {int dummy; } ;


 int DMA_PQ_VAL ;
 struct dma_chan* async_tx_find_channel (struct async_submit_ctl*,int ,int *,int ,struct page**,int,size_t) ;

__attribute__((used)) static inline struct dma_chan *
pq_val_chan(struct async_submit_ctl *submit, struct page **blocks, int disks, size_t len)
{



 return async_tx_find_channel(submit, DMA_PQ_VAL, ((void*)0), 0, blocks,
         disks, len);
}
