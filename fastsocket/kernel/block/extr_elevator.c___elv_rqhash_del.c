
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int hash; } ;


 int hlist_del_init (int *) ;

__attribute__((used)) static inline void __elv_rqhash_del(struct request *rq)
{
 hlist_del_init(&rq->hash);
}
