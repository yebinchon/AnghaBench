
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct c2_mq {int host_dma; } ;
struct c2_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int C2_MQ_HOST_TARGET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int c2_mq_rep_init (struct c2_mq*,int ,int,int,int *,int *,int ) ;
 int * dma_alloc_coherent (int *,int,int *,int ) ;
 int mapping ;
 int pci_unmap_addr_set (struct c2_mq*,int ,int ) ;

__attribute__((used)) static int c2_alloc_cq_buf(struct c2_dev *c2dev, struct c2_mq *mq, int q_size,
      int msg_size)
{
 u8 *pool_start;

 pool_start = dma_alloc_coherent(&c2dev->pcidev->dev, q_size * msg_size,
     &mq->host_dma, GFP_KERNEL);
 if (!pool_start)
  return -ENOMEM;

 c2_mq_rep_init(mq,
         0,
         q_size,
         msg_size,
         pool_start,
         ((void*)0),
         C2_MQ_HOST_TARGET);

 pci_unmap_addr_set(mq, mapping, mq->host_dma);

 return 0;
}
