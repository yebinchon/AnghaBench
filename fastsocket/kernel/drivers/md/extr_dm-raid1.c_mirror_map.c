
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union map_info {struct dm_raid1_read_record* ptr; int ll; } ;
struct mirror_set {int read_record_pool; int rh; } ;
struct mirror {int dummy; } ;
struct dm_target {struct mirror_set* private; } ;
struct dm_raid1_read_record {struct mirror* m; int details; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_sector; } ;
struct TYPE_2__ {int (* in_sync ) (struct dm_dirty_log*,int ,int ) ;} ;


 int DM_MAPIO_REMAPPED ;
 int DM_MAPIO_SUBMITTED ;
 int EIO ;
 int EWOULDBLOCK ;
 int GFP_NOIO ;
 int READA ;
 int WRITE ;
 int bio_rw (struct bio*) ;
 struct mirror* choose_mirror (struct mirror_set*,int ) ;
 int dm_bio_record (int *,struct bio*) ;
 int dm_rh_bio_to_region (int ,struct bio*) ;
 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 scalar_t__ likely (struct dm_raid1_read_record*) ;
 int map_bio (struct mirror*,struct bio*) ;
 struct dm_raid1_read_record* mempool_alloc (int ,int ) ;
 int queue_bio (struct mirror_set*,struct bio*,int) ;
 int stub1 (struct dm_dirty_log*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mirror_map(struct dm_target *ti, struct bio *bio,
        union map_info *map_context)
{
 int r, rw = bio_rw(bio);
 struct mirror *m;
 struct mirror_set *ms = ti->private;
 struct dm_raid1_read_record *read_record = ((void*)0);
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);

 if (rw == WRITE) {

  map_context->ll = dm_rh_bio_to_region(ms->rh, bio);
  queue_bio(ms, bio, rw);
  return DM_MAPIO_SUBMITTED;
 }

 r = log->type->in_sync(log, dm_rh_bio_to_region(ms->rh, bio), 0);
 if (r < 0 && r != -EWOULDBLOCK)
  return r;




 if (!r || (r == -EWOULDBLOCK)) {
  if (rw == READA)
   return -EWOULDBLOCK;

  queue_bio(ms, bio, rw);
  return DM_MAPIO_SUBMITTED;
 }





 m = choose_mirror(ms, bio->bi_sector);
 if (unlikely(!m))
  return -EIO;

 read_record = mempool_alloc(ms->read_record_pool, GFP_NOIO);
 if (likely(read_record)) {
  dm_bio_record(&read_record->details, bio);
  map_context->ptr = read_record;
  read_record->m = m;
 }

 map_bio(m, bio);

 return DM_MAPIO_REMAPPED;
}
