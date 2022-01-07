
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clx2_queue {int last_used; int first_empty; scalar_t__ n_bd; } ;



__attribute__((used)) static inline int ipw_tx_queue_space(const struct clx2_queue *q)
{
 int s = q->last_used - q->first_empty;
 if (s <= 0)
  s += q->n_bd;
 s -= 2;
 if (s < 0)
  s = 0;
 return s;
}
