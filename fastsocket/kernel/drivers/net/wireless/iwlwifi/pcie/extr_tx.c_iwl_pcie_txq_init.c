
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dma_addr; } ;
struct iwl_txq {TYPE_1__ q; int lock; scalar_t__ need_update; } ;
struct iwl_trans {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int FH_MEM_CBBC_QUEUE (int ) ;
 int TFD_QUEUE_SIZE_MAX ;
 int iwl_queue_init (TYPE_1__*,int,int,int ) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int iwl_pcie_txq_init(struct iwl_trans *trans, struct iwl_txq *txq,
         int slots_num, u32 txq_id)
{
 int ret;

 txq->need_update = 0;



 BUILD_BUG_ON(TFD_QUEUE_SIZE_MAX & (TFD_QUEUE_SIZE_MAX - 1));


 ret = iwl_queue_init(&txq->q, TFD_QUEUE_SIZE_MAX, slots_num,
   txq_id);
 if (ret)
  return ret;

 spin_lock_init(&txq->lock);





 iwl_write_direct32(trans, FH_MEM_CBBC_QUEUE(txq_id),
      txq->q.dma_addr >> 8);

 return 0;
}
