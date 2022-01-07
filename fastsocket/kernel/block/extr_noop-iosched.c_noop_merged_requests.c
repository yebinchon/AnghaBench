
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int queuelist; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void noop_merged_requests(struct request_queue *q, struct request *rq,
     struct request *next)
{
 list_del_init(&next->queuelist);
}
