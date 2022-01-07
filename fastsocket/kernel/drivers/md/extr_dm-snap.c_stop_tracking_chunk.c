
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int tracked_chunk_pool; int tracked_chunk_lock; } ;
struct dm_snap_tracked_chunk {int node; } ;


 int hlist_del (int *) ;
 int mempool_free (struct dm_snap_tracked_chunk*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stop_tracking_chunk(struct dm_snapshot *s,
    struct dm_snap_tracked_chunk *c)
{
 unsigned long flags;

 spin_lock_irqsave(&s->tracked_chunk_lock, flags);
 hlist_del(&c->node);
 spin_unlock_irqrestore(&s->tracked_chunk_lock, flags);

 mempool_free(c, s->tracked_chunk_pool);
}
