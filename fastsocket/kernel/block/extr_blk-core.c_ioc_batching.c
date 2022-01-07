
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ nr_batching; } ;
struct io_context {scalar_t__ nr_batch_requests; scalar_t__ last_waited; } ;


 scalar_t__ BLK_BATCH_TIME ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static inline int ioc_batching(struct request_queue *q, struct io_context *ioc)
{
 if (!ioc)
  return 0;






 return ioc->nr_batch_requests == q->nr_batching ||
  (ioc->nr_batch_requests > 0
  && time_before(jiffies, ioc->last_waited + BLK_BATCH_TIME));
}
