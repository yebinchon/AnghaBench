
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_mq {int priv; int q_size; int * shared; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static __inline__ int c2_mq_full(struct c2_mq *q)
{
 return q->priv == (be16_to_cpu(*q->shared) + q->q_size - 1) % q->q_size;
}
