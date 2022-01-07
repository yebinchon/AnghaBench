
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int td; struct pool* pool; } ;
struct pool {int lock; int deferred_flush_bios; } ;
struct bio {int dummy; } ;


 int bio_io_error (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int bio_triggers_commit (struct thin_c*,struct bio*) ;
 scalar_t__ dm_thin_aborted_changes (int ) ;
 int generic_make_request (struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void issue(struct thin_c *tc, struct bio *bio)
{
 struct pool *pool = tc->pool;
 unsigned long flags;

 if (!bio_triggers_commit(tc, bio)) {
  generic_make_request(bio);
  return;
 }






 if (dm_thin_aborted_changes(tc->td)) {
  bio_io_error(bio);
  return;
 }





 spin_lock_irqsave(&pool->lock, flags);
 bio_list_add(&pool->deferred_flush_bios, bio);
 spin_unlock_irqrestore(&pool->lock, flags);
}
