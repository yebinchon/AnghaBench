
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int mask; scalar_t__ is_input_q; } ;


 int qdio_siga_sync (struct qdio_q*,int ,int ) ;

__attribute__((used)) static inline int qdio_siga_sync_q(struct qdio_q *q)
{
 if (q->is_input_q)
  return qdio_siga_sync(q, 0, q->mask);
 else
  return qdio_siga_sync(q, q->mask, 0);
}
