
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
typedef int ssize_t ;


 int PAGE_CACHE_SIZE ;
 int QUEUE_FLAG_CLUSTER ;
 int queue_max_segment_size (struct request_queue*) ;
 int queue_var_show (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t queue_max_segment_size_show(struct request_queue *q, char *page)
{
 if (test_bit(QUEUE_FLAG_CLUSTER, &q->queue_flags))
  return queue_var_show(queue_max_segment_size(q), (page));

 return queue_var_show(PAGE_CACHE_SIZE, (page));
}
