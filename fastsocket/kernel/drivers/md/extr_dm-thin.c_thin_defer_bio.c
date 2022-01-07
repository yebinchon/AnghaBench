
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; int deferred_bio_list; struct pool* pool; } ;
struct pool {int dummy; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_worker (struct pool*) ;

__attribute__((used)) static void thin_defer_bio(struct thin_c *tc, struct bio *bio)
{
 unsigned long flags;
 struct pool *pool = tc->pool;

 spin_lock_irqsave(&tc->lock, flags);
 bio_list_add(&tc->deferred_bio_list, bio);
 spin_unlock_irqrestore(&tc->lock, flags);

 wake_worker(pool);
}
