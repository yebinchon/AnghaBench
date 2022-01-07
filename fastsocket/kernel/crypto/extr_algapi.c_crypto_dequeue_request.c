
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_queue {int dummy; } ;
struct crypto_async_request {int dummy; } ;


 struct crypto_async_request* __crypto_dequeue_request (struct crypto_queue*,int ) ;

struct crypto_async_request *crypto_dequeue_request(struct crypto_queue *queue)
{
 return __crypto_dequeue_request(queue, 0);
}
