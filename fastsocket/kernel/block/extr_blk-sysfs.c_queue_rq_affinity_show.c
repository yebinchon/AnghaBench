
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
typedef int ssize_t ;


 int QUEUE_FLAG_SAME_COMP ;
 int QUEUE_FLAG_SAME_FORCE ;
 int queue_var_show (int,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t queue_rq_affinity_show(struct request_queue *q, char *page)
{
 bool set = test_bit(QUEUE_FLAG_SAME_COMP, &q->queue_flags);
 bool force = test_bit(QUEUE_FLAG_SAME_FORCE, &q->queue_flags);

 return queue_var_show(set << force, page);
}
