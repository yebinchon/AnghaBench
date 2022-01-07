
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct async_submit_ctl {int flags; void* scribble; void* cb_param; int * cb_fn; } ;
typedef enum async_tx_flags { ____Placeholder_async_tx_flags } async_tx_flags ;
typedef int * dma_async_tx_callback ;


 int ASYNC_TX_FENCE ;
 int ASYNC_TX_XOR_ZERO_DST ;
 struct dma_async_tx_descriptor* async_sum_product (struct page*,struct page**,unsigned char*,size_t,struct async_submit_ctl*) ;
 struct dma_async_tx_descriptor* async_xor (struct page*,struct page**,int ,int,size_t,struct async_submit_ctl*) ;
 int init_async_submit (struct async_submit_ctl*,int,struct dma_async_tx_descriptor*,int *,void*,void*) ;
 unsigned char* raid6_gfexi ;
 size_t* raid6_gfexp ;
 unsigned char* raid6_gfinv ;

__attribute__((used)) static struct dma_async_tx_descriptor *
__2data_recov_4(int disks, size_t bytes, int faila, int failb,
  struct page **blocks, struct async_submit_ctl *submit)
{
 struct dma_async_tx_descriptor *tx = ((void*)0);
 struct page *p, *q, *a, *b;
 struct page *srcs[2];
 unsigned char coef[2];
 enum async_tx_flags flags = submit->flags;
 dma_async_tx_callback cb_fn = submit->cb_fn;
 void *cb_param = submit->cb_param;
 void *scribble = submit->scribble;

 p = blocks[disks-2];
 q = blocks[disks-1];

 a = blocks[faila];
 b = blocks[failb];



 srcs[0] = p;
 srcs[1] = q;
 coef[0] = raid6_gfexi[failb-faila];
 coef[1] = raid6_gfinv[raid6_gfexp[faila]^raid6_gfexp[failb]];
 init_async_submit(submit, ASYNC_TX_FENCE, tx, ((void*)0), ((void*)0), scribble);
 tx = async_sum_product(b, srcs, coef, bytes, submit);


 srcs[0] = p;
 srcs[1] = b;
 init_async_submit(submit, flags | ASYNC_TX_XOR_ZERO_DST, tx, cb_fn,
     cb_param, scribble);
 tx = async_xor(a, srcs, 0, 2, bytes, submit);

 return tx;

}
