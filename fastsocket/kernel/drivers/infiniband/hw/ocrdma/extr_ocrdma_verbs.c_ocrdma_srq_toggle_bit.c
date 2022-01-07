
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_srq {unsigned int* idx_bit_fields; } ;



__attribute__((used)) static void ocrdma_srq_toggle_bit(struct ocrdma_srq *srq, int idx)
{
 int i = idx / 32;
 unsigned int mask = (1 << (idx % 32));

 if (srq->idx_bit_fields[i] & mask)
  srq->idx_bit_fields[i] &= ~mask;
 else
  srq->idx_bit_fields[i] |= mask;
}
