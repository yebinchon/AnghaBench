
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct bio_list {int dummy; } ;
struct pool {int last_commit_jiffies; int pmd; int lock; struct bio_list deferred_flush_bios; } ;
struct bio {int dummy; } ;


 int bio_io_error (struct bio*) ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 scalar_t__ commit (struct pool*) ;
 scalar_t__ dm_pool_changed_this_transaction (int ) ;
 int generic_make_request (struct bio*) ;
 struct thin_c* get_first_thin (struct pool*) ;
 struct thin_c* get_next_thin (struct pool*,struct thin_c*) ;
 int jiffies ;
 scalar_t__ need_commit_due_to_time (struct pool*) ;
 int process_thin_deferred_bios (struct thin_c*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void process_deferred_bios(struct pool *pool)
{
 unsigned long flags;
 struct bio *bio;
 struct bio_list bios;
 struct thin_c *tc;

 tc = get_first_thin(pool);
 while (tc) {
  process_thin_deferred_bios(tc);
  tc = get_next_thin(pool, tc);
 }





 bio_list_init(&bios);
 spin_lock_irqsave(&pool->lock, flags);
 bio_list_merge(&bios, &pool->deferred_flush_bios);
 bio_list_init(&pool->deferred_flush_bios);
 spin_unlock_irqrestore(&pool->lock, flags);

 if (bio_list_empty(&bios) &&
     !(dm_pool_changed_this_transaction(pool->pmd) && need_commit_due_to_time(pool)))
  return;

 if (commit(pool)) {
  while ((bio = bio_list_pop(&bios)))
   bio_io_error(bio);
  return;
 }
 pool->last_commit_jiffies = jiffies;

 while ((bio = bio_list_pop(&bios)))
  generic_make_request(bio);
}
