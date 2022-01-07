
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp_hwq_info {int head; int tail; int max_cnt; } ;



__attribute__((used)) static int ocrdma_hwq_free_cnt(struct ocrdma_qp_hwq_info *q)
{
 int free_cnt;
 if (q->head >= q->tail)
  free_cnt = (q->max_cnt - q->head) + q->tail;
 else
  free_cnt = q->tail - q->head;
 return free_cnt;
}
