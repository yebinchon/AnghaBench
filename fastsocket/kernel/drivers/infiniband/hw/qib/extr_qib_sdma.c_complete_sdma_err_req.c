
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; scalar_t__ next_descq_idx; scalar_t__ start_idx; } ;
struct qib_verbs_txreq {TYPE_2__ txreq; TYPE_1__* qp; } ;
struct qib_pportdata {int sdma_activelist; } ;
struct TYPE_3__ {int s_dma_busy; } ;


 int atomic_inc (int *) ;
 int clear_sdma_activelist (struct qib_pportdata*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void complete_sdma_err_req(struct qib_pportdata *ppd,
      struct qib_verbs_txreq *tx)
{
 atomic_inc(&tx->qp->s_dma_busy);

 tx->txreq.start_idx = 0;
 tx->txreq.next_descq_idx = 0;
 list_add_tail(&tx->txreq.list, &ppd->sdma_activelist);
 clear_sdma_activelist(ppd);
}
