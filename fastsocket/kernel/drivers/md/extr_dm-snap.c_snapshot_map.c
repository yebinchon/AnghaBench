
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union map_info {int ptr; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int lock; TYPE_2__* origin; TYPE_3__* store; int complete; int valid; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct dm_snap_pending_exception {int started; int snapshot_bios; struct dm_exception e; } ;
struct bio {int bi_rw; int bi_size; int bi_bdev; int bi_sector; } ;
typedef int chunk_t ;
struct TYPE_6__ {int chunk_size; } ;
struct TYPE_5__ {int bdev; } ;
struct TYPE_4__ {int bdev; } ;


 int BIO_FLUSH ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int EIO ;
 int ENOMEM ;
 int SECTOR_SHIFT ;
 scalar_t__ WRITE ;
 struct dm_snap_pending_exception* __find_pending_exception (struct dm_snapshot*,struct dm_snap_pending_exception*,int ) ;
 int __invalidate_snapshot (struct dm_snapshot*,int ) ;
 struct dm_snap_pending_exception* __lookup_pending_exception (struct dm_snapshot*,int ) ;
 struct dm_snap_pending_exception* alloc_pending_exception (struct dm_snapshot*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_rw (struct bio*) ;
 struct dm_exception* dm_lookup_exception (int *,int ) ;
 int down_write (int *) ;
 int free_pending_exception (struct dm_snap_pending_exception*) ;
 int remap_exception (struct dm_snapshot*,struct dm_exception*,struct bio*,int ) ;
 int sector_to_chunk (TYPE_3__*,int ) ;
 int start_copy (struct dm_snap_pending_exception*) ;
 int start_full_bio (struct dm_snap_pending_exception*,struct bio*) ;
 int track_chunk (struct dm_snapshot*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int snapshot_map(struct dm_target *ti, struct bio *bio,
   union map_info *map_context)
{
 struct dm_exception *e;
 struct dm_snapshot *s = ti->private;
 int r = DM_MAPIO_REMAPPED;
 chunk_t chunk;
 struct dm_snap_pending_exception *pe = ((void*)0);

 if (bio->bi_rw & BIO_FLUSH) {
  bio->bi_bdev = s->cow->bdev;
  return DM_MAPIO_REMAPPED;
 }

 chunk = sector_to_chunk(s->store, bio->bi_sector);



 if (!s->valid)
  return -EIO;



 down_write(&s->lock);

 if (!s->valid) {
  r = -EIO;
  goto out_unlock;
 }


 e = dm_lookup_exception(&s->complete, chunk);
 if (e) {
  remap_exception(s, e, bio, chunk);
  goto out_unlock;
 }






 if (bio_rw(bio) == WRITE) {
  pe = __lookup_pending_exception(s, chunk);
  if (!pe) {
   up_write(&s->lock);
   pe = alloc_pending_exception(s);
   down_write(&s->lock);

   if (!s->valid) {
    free_pending_exception(pe);
    r = -EIO;
    goto out_unlock;
   }

   e = dm_lookup_exception(&s->complete, chunk);
   if (e) {
    free_pending_exception(pe);
    remap_exception(s, e, bio, chunk);
    goto out_unlock;
   }

   pe = __find_pending_exception(s, pe, chunk);
   if (!pe) {
    __invalidate_snapshot(s, -ENOMEM);
    r = -EIO;
    goto out_unlock;
   }
  }

  remap_exception(s, &pe->e, bio, chunk);

  r = DM_MAPIO_SUBMITTED;

  if (!pe->started &&
      bio->bi_size == (s->store->chunk_size << SECTOR_SHIFT)) {
   pe->started = 1;
   up_write(&s->lock);
   start_full_bio(pe, bio);
   goto out;
  }

  bio_list_add(&pe->snapshot_bios, bio);

  if (!pe->started) {

   pe->started = 1;
   up_write(&s->lock);
   start_copy(pe);
   goto out;
  }
 } else {
  bio->bi_bdev = s->origin->bdev;
  map_context->ptr = track_chunk(s, chunk);
 }

out_unlock:
 up_write(&s->lock);
out:
 return r;
}
