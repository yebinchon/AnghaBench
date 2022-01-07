
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int lock; int complete; int valid; } ;
struct dm_exception {int old_chunk; } ;
struct dm_snap_pending_exception {int full_bio_private; int full_bio_end_io; struct bio* full_bio; int origin_bios; int snapshot_bios; struct dm_exception e; struct dm_snapshot* snap; } ;
struct bio {int bi_private; int bi_end_io; } ;


 int EIO ;
 int ENOMEM ;
 int __check_for_conflicting_io (struct dm_snapshot*,int ) ;
 int __invalidate_snapshot (struct dm_snapshot*,int ) ;
 struct dm_exception* alloc_completed_exception () ;
 int bio_endio (struct bio*,int ) ;
 int bio_io_error (struct bio*) ;
 struct bio* bio_list_get (int *) ;
 int dm_insert_exception (int *,struct dm_exception*) ;
 int dm_remove_exception (struct dm_exception*) ;
 int down_write (int *) ;
 int error_bios (struct bio*) ;
 int flush_bios (struct bio*) ;
 int free_completed_exception (struct dm_exception*) ;
 int free_pending_exception (struct dm_snap_pending_exception*) ;
 int increment_pending_exceptions_done_count () ;
 int retry_origin_bios (struct dm_snapshot*,struct bio*) ;
 int up_write (int *) ;

__attribute__((used)) static void pending_complete(struct dm_snap_pending_exception *pe, int success)
{
 struct dm_exception *e;
 struct dm_snapshot *s = pe->snap;
 struct bio *origin_bios = ((void*)0);
 struct bio *snapshot_bios = ((void*)0);
 struct bio *full_bio = ((void*)0);
 int error = 0;

 if (!success) {

  down_write(&s->lock);
  __invalidate_snapshot(s, -EIO);
  error = 1;
  goto out;
 }

 e = alloc_completed_exception();
 if (!e) {
  down_write(&s->lock);
  __invalidate_snapshot(s, -ENOMEM);
  error = 1;
  goto out;
 }
 *e = pe->e;

 down_write(&s->lock);
 if (!s->valid) {
  free_completed_exception(e);
  error = 1;
  goto out;
 }


 __check_for_conflicting_io(s, pe->e.old_chunk);





 dm_insert_exception(&s->complete, e);

out:
 dm_remove_exception(&pe->e);
 snapshot_bios = bio_list_get(&pe->snapshot_bios);
 origin_bios = bio_list_get(&pe->origin_bios);
 full_bio = pe->full_bio;
 if (full_bio) {
  full_bio->bi_end_io = pe->full_bio_end_io;
  full_bio->bi_private = pe->full_bio_private;
 }
 free_pending_exception(pe);

 increment_pending_exceptions_done_count();

 up_write(&s->lock);


 if (error) {
  if (full_bio)
   bio_io_error(full_bio);
  error_bios(snapshot_bios);
 } else {
  if (full_bio)
   bio_endio(full_bio, 0);
  flush_bios(snapshot_bios);
 }

 retry_origin_bios(s, origin_bios);
}
