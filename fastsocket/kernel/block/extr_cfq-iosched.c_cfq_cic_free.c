
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_io_context {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int cfq_cic_free_rcu ;

__attribute__((used)) static void cfq_cic_free(struct cfq_io_context *cic)
{
 call_rcu(&cic->rcu_head, cfq_cic_free_rcu);
}
