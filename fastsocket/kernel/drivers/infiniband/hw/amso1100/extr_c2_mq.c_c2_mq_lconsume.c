
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c2_mq {scalar_t__ magic; scalar_t__ type; int q_size; int * shared; } ;


 int BUG_ON (int) ;
 scalar_t__ C2_MQ_ADAPTER_TARGET ;
 scalar_t__ C2_MQ_MAGIC ;
 int be16_to_cpu (int ) ;
 int c2_mq_empty (struct c2_mq*) ;
 int cpu_to_be16 (int) ;

void c2_mq_lconsume(struct c2_mq *q, u32 wqe_count)
{
 BUG_ON(q->magic != C2_MQ_MAGIC);
 BUG_ON(q->type != C2_MQ_ADAPTER_TARGET);

 while (wqe_count--) {
  BUG_ON(c2_mq_empty(q));
  *q->shared = cpu_to_be16((be16_to_cpu(*q->shared)+1) % q->q_size);
 }
}
