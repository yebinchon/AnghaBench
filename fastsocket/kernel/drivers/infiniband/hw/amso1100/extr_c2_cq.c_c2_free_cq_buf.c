
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int host; } ;
struct c2_mq {int q_size; int msg_size; TYPE_2__ msg_pool; } ;
struct c2_dev {TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int,int ,int ) ;
 int mapping ;
 int pci_unmap_addr (struct c2_mq*,int ) ;

__attribute__((used)) static void c2_free_cq_buf(struct c2_dev *c2dev, struct c2_mq *mq)
{
 dma_free_coherent(&c2dev->pcidev->dev, mq->q_size * mq->msg_size,
     mq->msg_pool.host, pci_unmap_addr(mq, mapping));
}
