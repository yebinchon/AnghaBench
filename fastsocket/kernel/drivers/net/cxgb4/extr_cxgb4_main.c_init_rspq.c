
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sge_rspq {int intr_params; unsigned int iqe_len; unsigned int size; scalar_t__ pktcnt_idx; } ;


 int QINTR_CNT_EN ;
 int QINTR_TIMER_IDX (scalar_t__) ;
 scalar_t__ SGE_NCOUNTERS ;

__attribute__((used)) static inline void init_rspq(struct sge_rspq *q, u8 timer_idx, u8 pkt_cnt_idx,
        unsigned int size, unsigned int iqe_size)
{
 q->intr_params = QINTR_TIMER_IDX(timer_idx) |
    (pkt_cnt_idx < SGE_NCOUNTERS ? QINTR_CNT_EN : 0);
 q->pktcnt_idx = pkt_cnt_idx < SGE_NCOUNTERS ? pkt_cnt_idx : 0;
 q->iqe_len = iqe_size;
 q->size = size;
}
