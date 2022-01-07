
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_async_crq_queue {size_t cur; size_t size; struct ibmvfc_async_crq* msgs; } ;
struct ibmvfc_host {struct ibmvfc_async_crq_queue async_crq; } ;
struct ibmvfc_async_crq {int valid; } ;


 int rmb () ;

__attribute__((used)) static struct ibmvfc_async_crq *ibmvfc_next_async_crq(struct ibmvfc_host *vhost)
{
 struct ibmvfc_async_crq_queue *async_crq = &vhost->async_crq;
 struct ibmvfc_async_crq *crq;

 crq = &async_crq->msgs[async_crq->cur];
 if (crq->valid & 0x80) {
  if (++async_crq->cur == async_crq->size)
   async_crq->cur = 0;
  rmb();
 } else
  crq = ((void*)0);

 return crq;
}
