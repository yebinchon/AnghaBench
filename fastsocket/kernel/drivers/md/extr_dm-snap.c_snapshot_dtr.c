
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int origin; int cow; int store; int pending_pool; int tracked_chunk_pool; int * tracked_chunk_hash; int pending_exceptions_count; int lock; scalar_t__ valid; } ;


 int BUG_ON (int) ;
 int DMERR (char*) ;
 int DM_TRACKED_CHUNK_HASH_SIZE ;
 int __find_snapshots_sharing_cow (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int *) ;
 int __free_exceptions (struct dm_snapshot*) ;
 int _origins_lock ;
 scalar_t__ atomic_read (int *) ;
 int dm_exception_store_destroy (int ) ;
 int dm_put_device (struct dm_target*,int ) ;
 scalar_t__ dm_target_is_snapshot_merge (struct dm_target*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int hlist_empty (int *) ;
 int kfree (struct dm_snapshot*) ;
 int mempool_destroy (int ) ;
 int msleep (int) ;
 int smp_mb () ;
 int stop_merge (struct dm_snapshot*) ;
 int unregister_snapshot (struct dm_snapshot*) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void snapshot_dtr(struct dm_target *ti)
{



 struct dm_snapshot *s = ti->private;
 struct dm_snapshot *snap_src = ((void*)0), *snap_dest = ((void*)0);

 down_read(&_origins_lock);

 (void) __find_snapshots_sharing_cow(s, &snap_src, &snap_dest, ((void*)0));
 if (snap_src && snap_dest && (s == snap_src)) {
  down_write(&snap_dest->lock);
  snap_dest->valid = 0;
  up_write(&snap_dest->lock);
  DMERR("Cancelling snapshot handover.");
 }
 up_read(&_origins_lock);

 if (dm_target_is_snapshot_merge(ti))
  stop_merge(s);



 unregister_snapshot(s);

 while (atomic_read(&s->pending_exceptions_count))
  msleep(1);




 smp_mb();






 mempool_destroy(s->tracked_chunk_pool);

 __free_exceptions(s);

 mempool_destroy(s->pending_pool);

 dm_exception_store_destroy(s->store);

 dm_put_device(ti, s->cow);

 dm_put_device(ti, s->origin);

 kfree(s);
}
