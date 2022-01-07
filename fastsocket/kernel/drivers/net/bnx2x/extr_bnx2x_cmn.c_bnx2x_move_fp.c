
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_sp_objs {int index; struct bnx2x_sp_objs** txdata_ptr; struct bnx2x_agg_info* tpa_info; int napi; } ;
struct bnx2x_fp_txdata {int dummy; } ;
struct bnx2x_fp_stats {int index; struct bnx2x_fp_stats** txdata_ptr; struct bnx2x_agg_info* tpa_info; int napi; } ;
struct bnx2x_fastpath {int index; struct bnx2x_fastpath** txdata_ptr; struct bnx2x_agg_info* tpa_info; int napi; } ;
struct bnx2x_agg_info {int dummy; } ;
struct bnx2x {int max_cos; struct bnx2x_sp_objs* bnx2x_txq; struct bnx2x_sp_objs* fp_stats; struct bnx2x_sp_objs* sp_objs; struct bnx2x_sp_objs* fp; } ;


 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 int FCOE_IDX (struct bnx2x*) ;
 int FCOE_TXQ_IDX_OFFSET ;
 int memcpy (struct bnx2x_sp_objs*,struct bnx2x_sp_objs*,int) ;

__attribute__((used)) static inline void bnx2x_move_fp(struct bnx2x *bp, int from, int to)
{
 struct bnx2x_fastpath *from_fp = &bp->fp[from];
 struct bnx2x_fastpath *to_fp = &bp->fp[to];
 struct bnx2x_sp_objs *from_sp_objs = &bp->sp_objs[from];
 struct bnx2x_sp_objs *to_sp_objs = &bp->sp_objs[to];
 struct bnx2x_fp_stats *from_fp_stats = &bp->fp_stats[from];
 struct bnx2x_fp_stats *to_fp_stats = &bp->fp_stats[to];
 int old_max_eth_txqs, new_max_eth_txqs;
 int old_txdata_index = 0, new_txdata_index = 0;
 struct bnx2x_agg_info *old_tpa_info = to_fp->tpa_info;


 from_fp->napi = to_fp->napi;


 memcpy(to_fp, from_fp, sizeof(*to_fp));
 to_fp->index = to;




 to_fp->tpa_info = old_tpa_info;


 memcpy(to_sp_objs, from_sp_objs, sizeof(*to_sp_objs));


 memcpy(to_fp_stats, from_fp_stats, sizeof(*to_fp_stats));






 old_max_eth_txqs = BNX2X_NUM_ETH_QUEUES(bp) * (bp)->max_cos;
 new_max_eth_txqs = (BNX2X_NUM_ETH_QUEUES(bp) - from + to) *
    (bp)->max_cos;
 if (from == FCOE_IDX(bp)) {
  old_txdata_index = old_max_eth_txqs + FCOE_TXQ_IDX_OFFSET;
  new_txdata_index = new_max_eth_txqs + FCOE_TXQ_IDX_OFFSET;
 }

 memcpy(&bp->bnx2x_txq[new_txdata_index],
        &bp->bnx2x_txq[old_txdata_index],
        sizeof(struct bnx2x_fp_txdata));
 to_fp->txdata_ptr[0] = &bp->bnx2x_txq[new_txdata_index];
}
