
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_queue {scalar_t__ qlen; scalar_t__ max_qlen; int list; int * backlog; } ;
struct crypto_async_request {int flags; int list; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;

int crypto_enqueue_request(struct crypto_queue *queue,
      struct crypto_async_request *request)
{
 int err = -EINPROGRESS;

 if (unlikely(queue->qlen >= queue->max_qlen)) {
  err = -EBUSY;
  if (!(request->flags & CRYPTO_TFM_REQ_MAY_BACKLOG))
   goto out;
  if (queue->backlog == &queue->list)
   queue->backlog = &request->list;
 }

 queue->qlen++;
 list_add_tail(&request->list, &queue->list);

out:
 return err;
}
