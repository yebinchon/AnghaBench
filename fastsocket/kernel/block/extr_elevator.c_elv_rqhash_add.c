
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct elevator_queue* elevator; } ;
struct request {int hash; } ;
struct elevator_queue {int * hash; } ;


 int BUG_ON (int ) ;
 size_t ELV_HASH_FN (int ) ;
 int ELV_ON_HASH (struct request*) ;
 int hlist_add_head (int *,int *) ;
 int rq_hash_key (struct request*) ;

__attribute__((used)) static void elv_rqhash_add(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;

 BUG_ON(ELV_ON_HASH(rq));
 hlist_add_head(&rq->hash, &e->hash[ELV_HASH_FN(rq_hash_key(rq))]);
}
