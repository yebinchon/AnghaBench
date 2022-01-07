
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_sbal_total; int * nr_sbals; } ;
struct qdio_q {TYPE_1__ q_stats; } ;


 int QDIO_MAX_BUFFERS_MASK ;

__attribute__((used)) static inline void account_sbals(struct qdio_q *q, int count)
{
 int pos = 0;

 q->q_stats.nr_sbal_total += count;
 if (count == QDIO_MAX_BUFFERS_MASK) {
  q->q_stats.nr_sbals[7]++;
  return;
 }
 while (count >>= 1)
  pos++;
 q->q_stats.nr_sbals[pos]++;
}
