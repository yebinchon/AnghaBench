
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int cpu; int tag; int ref_count; int start_time; int cmd_len; int __cmd; int cmd; int rb_node; int hash; scalar_t__ __sector; struct request_queue* q; int timeout_list; int queuelist; } ;
typedef scalar_t__ sector_t ;


 int BLK_MAX_CDB ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int jiffies ;
 int memset (struct request*,int ,int) ;
 int set_start_time_ns (struct request*) ;

void blk_rq_init(struct request_queue *q, struct request *rq)
{
 memset(rq, 0, sizeof(*rq));

 INIT_LIST_HEAD(&rq->queuelist);
 INIT_LIST_HEAD(&rq->timeout_list);
 rq->cpu = -1;
 rq->q = q;
 rq->__sector = (sector_t) -1;
 INIT_HLIST_NODE(&rq->hash);
 RB_CLEAR_NODE(&rq->rb_node);
 rq->cmd = rq->__cmd;
 rq->cmd_len = BLK_MAX_CDB;
 rq->tag = -1;
 rq->ref_count = 1;
 rq->start_time = jiffies;
 set_start_time_ns(rq);
}
