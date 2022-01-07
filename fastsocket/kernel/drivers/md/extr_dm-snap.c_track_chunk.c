
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int tracked_chunk_lock; int * tracked_chunk_hash; int tracked_chunk_pool; } ;
struct dm_snap_tracked_chunk {int node; int chunk; } ;
typedef int chunk_t ;


 size_t DM_TRACKED_CHUNK_HASH (int ) ;
 int GFP_NOIO ;
 int hlist_add_head (int *,int *) ;
 struct dm_snap_tracked_chunk* mempool_alloc (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct dm_snap_tracked_chunk *track_chunk(struct dm_snapshot *s,
       chunk_t chunk)
{
 struct dm_snap_tracked_chunk *c = mempool_alloc(s->tracked_chunk_pool,
       GFP_NOIO);

 c->chunk = chunk;

 spin_lock_irq(&s->tracked_chunk_lock);
 hlist_add_head(&c->node,
         &s->tracked_chunk_hash[DM_TRACKED_CHUNK_HASH(chunk)]);
 spin_unlock_irq(&s->tracked_chunk_lock);

 return c;
}
