
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int pending_exceptions_count; int pending_pool; } ;
struct dm_snap_pending_exception {struct dm_snapshot* snap; } ;


 int atomic_dec (int *) ;
 int mempool_free (struct dm_snap_pending_exception*,int ) ;
 int smp_mb__before_atomic_dec () ;

__attribute__((used)) static void free_pending_exception(struct dm_snap_pending_exception *pe)
{
 struct dm_snapshot *s = pe->snap;

 mempool_free(pe, s->pending_pool);
 smp_mb__before_atomic_dec();
 atomic_dec(&s->pending_exceptions_count);
}
