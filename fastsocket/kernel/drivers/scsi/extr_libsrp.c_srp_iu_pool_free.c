
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_queue {int pool; int items; } ;


 int kfree (int ) ;

__attribute__((used)) static void srp_iu_pool_free(struct srp_queue *q)
{
 kfree(q->items);
 kfree(q->pool);
}
