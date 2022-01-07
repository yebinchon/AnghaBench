
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int complete; int pending; int * kcopyd_client; } ;


 int dm_exception_table_exit (int *,int ) ;
 int dm_kcopyd_client_destroy (int *) ;
 int exception_cache ;
 int pending_cache ;

__attribute__((used)) static void __free_exceptions(struct dm_snapshot *s)
{
 dm_kcopyd_client_destroy(s->kcopyd_client);
 s->kcopyd_client = ((void*)0);

 dm_exception_table_exit(&s->pending, pending_cache);
 dm_exception_table_exit(&s->complete, exception_cache);
}
