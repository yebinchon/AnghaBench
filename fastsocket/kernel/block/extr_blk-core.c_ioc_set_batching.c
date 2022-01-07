
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_batching; } ;
struct io_context {int last_waited; int nr_batch_requests; } ;


 scalar_t__ ioc_batching (struct request_queue*,struct io_context*) ;
 int jiffies ;

__attribute__((used)) static void ioc_set_batching(struct request_queue *q, struct io_context *ioc)
{
 if (!ioc || ioc_batching(q, ioc))
  return;

 ioc->nr_batch_requests = q->nr_batching;
 ioc->last_waited = jiffies;
}
