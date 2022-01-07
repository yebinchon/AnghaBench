
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_rspq {size_t cntxt_id; int size; int iqe_len; size_t abs_id; int * desc; int * netdev; int napi; int phys_addr; } ;
struct sge_fl {int cntxt_id; int size; int * desc; int * sdesc; int addr; int avail; } ;
struct TYPE_2__ {size_t ingr_start; int ** ingr_map; } ;
struct adapter {int pdev_dev; int fn; TYPE_1__ sge; } ;


 int FW_IQ_TYPE_FL_INT_CAP ;
 int STAT_LEN ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int free_rx_bufs (struct adapter*,struct sge_fl*,int ) ;
 int kfree (int *) ;
 int netif_napi_del (int *) ;
 int t4_iq_free (struct adapter*,int ,int ,int ,int ,size_t,unsigned int,int) ;

__attribute__((used)) static void free_rspq_fl(struct adapter *adap, struct sge_rspq *rq,
    struct sge_fl *fl)
{
 unsigned int fl_id = fl ? fl->cntxt_id : 0xffff;

 adap->sge.ingr_map[rq->cntxt_id - adap->sge.ingr_start] = ((void*)0);
 t4_iq_free(adap, adap->fn, adap->fn, 0, FW_IQ_TYPE_FL_INT_CAP,
     rq->cntxt_id, fl_id, 0xffff);
 dma_free_coherent(adap->pdev_dev, (rq->size + 1) * rq->iqe_len,
     rq->desc, rq->phys_addr);
 netif_napi_del(&rq->napi);
 rq->netdev = ((void*)0);
 rq->cntxt_id = rq->abs_id = 0;
 rq->desc = ((void*)0);

 if (fl) {
  free_rx_bufs(adap, fl, fl->avail);
  dma_free_coherent(adap->pdev_dev, fl->size * 8 + STAT_LEN,
      fl->desc, fl->addr);
  kfree(fl->sdesc);
  fl->sdesc = ((void*)0);
  fl->cntxt_id = 0;
  fl->desc = ((void*)0);
 }
}
