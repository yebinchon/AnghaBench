
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int size; int in_use; } ;



__attribute__((used)) static inline unsigned int txq_avail(const struct sge_txq *q)
{
 return q->size - 1 - q->in_use;
}
