
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void c2wr_hdr ;
struct TYPE_2__ {void* host; } ;
struct c2_mq {scalar_t__ magic; scalar_t__ type; int priv; int msg_size; TYPE_1__ msg_pool; } ;


 int BUG_ON (int) ;
 scalar_t__ C2_MQ_HOST_TARGET ;
 scalar_t__ C2_MQ_MAGIC ;
 int CCWR_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ c2_mq_empty (struct c2_mq*) ;

void *c2_mq_consume(struct c2_mq *q)
{
 BUG_ON(q->magic != C2_MQ_MAGIC);
 BUG_ON(q->type != C2_MQ_HOST_TARGET);

 if (c2_mq_empty(q)) {
  return ((void*)0);
 } else {
  return q->msg_pool.host + q->priv * q->msg_size;

 }
}
