
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union map_info {int * ptr; int target_request_nr; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {scalar_t__ first_merging_chunk; scalar_t__ num_merging_chunks; int lock; TYPE_2__* origin; int bios_queued_during_merge; int complete; int valid; int store; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct bio {int bi_rw; int bi_bdev; int bi_sector; } ;
typedef scalar_t__ chunk_t ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int bdev; } ;


 int BIO_FLUSH ;
 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ WRITE ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_rw (struct bio*) ;
 struct dm_exception* dm_lookup_exception (int *,scalar_t__) ;
 int do_origin (TYPE_2__*,struct bio*) ;
 int down_write (int *) ;
 int remap_exception (struct dm_snapshot*,struct dm_exception*,struct bio*,scalar_t__) ;
 scalar_t__ sector_to_chunk (int ,int ) ;
 int * track_chunk (struct dm_snapshot*,scalar_t__) ;
 int up_write (int *) ;

__attribute__((used)) static int snapshot_merge_map(struct dm_target *ti, struct bio *bio,
         union map_info *map_context)
{
 struct dm_exception *e;
 struct dm_snapshot *s = ti->private;
 int r = DM_MAPIO_REMAPPED;
 chunk_t chunk;

 if (bio->bi_rw & BIO_FLUSH) {
  if (!map_context->target_request_nr)
   bio->bi_bdev = s->origin->bdev;
  else
   bio->bi_bdev = s->cow->bdev;
  map_context->ptr = ((void*)0);
  return DM_MAPIO_REMAPPED;
 }

 chunk = sector_to_chunk(s->store, bio->bi_sector);

 down_write(&s->lock);


 if (!s->valid)
  goto redirect_to_origin;


 e = dm_lookup_exception(&s->complete, chunk);
 if (e) {

  if (bio_rw(bio) == WRITE &&
      chunk >= s->first_merging_chunk &&
      chunk < (s->first_merging_chunk +
        s->num_merging_chunks)) {
   bio->bi_bdev = s->origin->bdev;
   bio_list_add(&s->bios_queued_during_merge, bio);
   r = DM_MAPIO_SUBMITTED;
   goto out_unlock;
  }

  remap_exception(s, e, bio, chunk);

  if (bio_rw(bio) == WRITE)
   map_context->ptr = track_chunk(s, chunk);
  goto out_unlock;
 }

redirect_to_origin:
 bio->bi_bdev = s->origin->bdev;

 if (bio_rw(bio) == WRITE) {
  up_write(&s->lock);
  return do_origin(s->origin, bio);
 }

out_unlock:
 up_write(&s->lock);

 return r;
}
