
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int IWL_FRAME_LIMIT ;
 int IWL_MAX_TID_COUNT ;
 int iwl_trans_txq_enable (struct iwl_trans*,int,int,int,int ,int ,int ) ;

__attribute__((used)) static inline void iwl_trans_ac_txq_enable(struct iwl_trans *trans, int queue,
        int fifo)
{
 iwl_trans_txq_enable(trans, queue, fifo, -1,
        IWL_MAX_TID_COUNT, IWL_FRAME_LIMIT, 0);
}
