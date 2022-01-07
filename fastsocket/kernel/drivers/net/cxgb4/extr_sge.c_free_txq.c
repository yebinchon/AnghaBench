
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int dummy; } ;
struct sge_txq {int size; int * desc; int * sdesc; scalar_t__ cntxt_id; int phys_addr; } ;
struct adapter {int pdev_dev; } ;


 scalar_t__ STAT_LEN ;
 int dma_free_coherent (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static void free_txq(struct adapter *adap, struct sge_txq *q)
{
 dma_free_coherent(adap->pdev_dev,
     q->size * sizeof(struct tx_desc) + STAT_LEN,
     q->desc, q->phys_addr);
 q->cntxt_id = 0;
 q->sdesc = ((void*)0);
 q->desc = ((void*)0);
}
