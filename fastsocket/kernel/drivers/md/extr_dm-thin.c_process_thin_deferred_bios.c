
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct thin_c {int lock; struct bio_list deferred_bio_list; scalar_t__ requeue_mode; struct pool* pool; } ;
struct pool {int (* process_bio ) (struct thin_c*,struct bio*) ;int (* process_discard ) (struct thin_c*,struct bio*) ;} ;
struct bio {int bi_rw; } ;


 int BIO_DISCARD ;
 int __sort_thin_deferred_bios (struct thin_c*) ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 scalar_t__ ensure_next_mapping (struct pool*) ;
 int requeue_bio_list (struct thin_c*,struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct thin_c*,struct bio*) ;
 int stub2 (struct thin_c*,struct bio*) ;

__attribute__((used)) static void process_thin_deferred_bios(struct thin_c *tc)
{
 struct pool *pool = tc->pool;
 unsigned long flags;
 struct bio *bio;
 struct bio_list bios;

 if (tc->requeue_mode) {
  requeue_bio_list(tc, &tc->deferred_bio_list);
  return;
 }

 bio_list_init(&bios);

 spin_lock_irqsave(&tc->lock, flags);

 if (bio_list_empty(&tc->deferred_bio_list)) {
  spin_unlock_irqrestore(&tc->lock, flags);
  return;
 }

 __sort_thin_deferred_bios(tc);

 bio_list_merge(&bios, &tc->deferred_bio_list);
 bio_list_init(&tc->deferred_bio_list);

 spin_unlock_irqrestore(&tc->lock, flags);

 while ((bio = bio_list_pop(&bios))) {





  if (ensure_next_mapping(pool)) {
   spin_lock_irqsave(&tc->lock, flags);
   bio_list_add(&tc->deferred_bio_list, bio);
   bio_list_merge(&tc->deferred_bio_list, &bios);
   spin_unlock_irqrestore(&tc->lock, flags);
   break;
  }

  if (bio->bi_rw & BIO_DISCARD)
   pool->process_discard(tc, bio);
  else
   pool->process_bio(tc, bio);
 }
}
