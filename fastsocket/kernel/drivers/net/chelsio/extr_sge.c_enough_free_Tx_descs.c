
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdQ {unsigned int processed; unsigned int cleaned; unsigned int in_use; int size; } ;



__attribute__((used)) static inline int enough_free_Tx_descs(const struct cmdQ *q)
{
 unsigned int r = q->processed - q->cleaned;

 return q->in_use - r < (q->size >> 1);
}
