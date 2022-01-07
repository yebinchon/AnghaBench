
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_mq {scalar_t__ priv; int * shared; } ;


 scalar_t__ be16_to_cpu (int ) ;

__attribute__((used)) static __inline__ int c2_mq_empty(struct c2_mq *q)
{
 return q->priv == be16_to_cpu(*q->shared);
}
