
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp_hwq_info {int head; int max_wqe_idx; } ;



__attribute__((used)) static void ocrdma_hwq_inc_head(struct ocrdma_qp_hwq_info *q)
{
 q->head = (q->head + 1) & q->max_wqe_idx;
}
