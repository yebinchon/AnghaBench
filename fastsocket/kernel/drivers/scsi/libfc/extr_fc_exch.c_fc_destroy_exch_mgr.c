
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int fc_em_cachep ;
 int fc_exch_workqueue ;
 int kmem_cache_destroy (int ) ;

void fc_destroy_exch_mgr(void)
{
 destroy_workqueue(fc_exch_workqueue);
 kmem_cache_destroy(fc_em_cachep);
}
