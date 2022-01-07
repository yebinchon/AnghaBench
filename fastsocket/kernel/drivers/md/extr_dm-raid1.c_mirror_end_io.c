
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union map_info {struct dm_raid1_read_record* ptr; int ll; } ;
struct mirror_set {int read_record_pool; int rh; } ;
struct mirror {TYPE_1__* dev; } ;
struct dm_target {scalar_t__ private; } ;
struct dm_bio_details {int dummy; } ;
struct dm_raid1_read_record {struct dm_bio_details details; struct mirror* m; } ;
struct bio {int bi_rw; } ;
struct TYPE_2__ {int name; } ;


 int BIO_DISCARD ;
 int BIO_FLUSH ;
 int BIO_RW_AHEAD ;
 int DMERR (char*,...) ;
 int DMERR_LIMIT (char*) ;
 int DM_RAID1_READ_ERROR ;
 int EIO ;
 int EOPNOTSUPP ;
 int EWOULDBLOCK ;
 int WRITE ;
 int bio_rw (struct bio*) ;
 scalar_t__ bio_rw_flagged (struct bio*,int ) ;
 scalar_t__ default_ok (struct mirror*) ;
 int dm_bio_restore (struct dm_bio_details*,struct bio*) ;
 int dm_rh_dec (int ,int ) ;
 int fail_mirror (struct mirror*,int ) ;
 int mempool_free (struct dm_raid1_read_record*,int ) ;
 scalar_t__ mirror_available (struct mirror_set*,struct bio*) ;
 int queue_bio (struct mirror_set*,struct bio*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mirror_end_io(struct dm_target *ti, struct bio *bio,
    int error, union map_info *map_context)
{
 int rw = bio_rw(bio);
 struct mirror_set *ms = (struct mirror_set *) ti->private;
 struct mirror *m = ((void*)0);
 struct dm_bio_details *bd = ((void*)0);
 struct dm_raid1_read_record *read_record = map_context->ptr;




 if (rw == WRITE) {
  if (!(bio->bi_rw & (BIO_FLUSH | BIO_DISCARD)))
   dm_rh_dec(ms->rh, map_context->ll);
  return error;
 }

 if (error == -EOPNOTSUPP)
  goto out;

 if ((error == -EWOULDBLOCK) && bio_rw_flagged(bio, BIO_RW_AHEAD))
  goto out;

 if (unlikely(error)) {
  if (!read_record) {





   DMERR_LIMIT("Mirror read failed.");
   return -EIO;
  }

  m = read_record->m;

  DMERR("Mirror read failed from %s. Trying alternative device.",
        m->dev->name);

  fail_mirror(m, DM_RAID1_READ_ERROR);





  if (default_ok(m) || mirror_available(ms, bio)) {
   bd = &read_record->details;

   dm_bio_restore(bd, bio);
   mempool_free(read_record, ms->read_record_pool);
   map_context->ptr = ((void*)0);
   queue_bio(ms, bio, rw);
   return 1;
  }
  DMERR("All replicated volumes dead, failing I/O");
 }

out:
 if (read_record) {
  mempool_free(read_record, ms->read_record_pool);
  map_context->ptr = ((void*)0);
 }

 return error;
}
