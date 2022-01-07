
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pool {int lock; } ;
struct dm_thin_new_mapping {int err; int prepared; TYPE_1__* tc; } ;
struct dm_thin_endio_hook {struct dm_thin_new_mapping* overwrite_mapping; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {struct dm_thin_endio_hook* ptr; } ;
struct TYPE_3__ {struct pool* pool; } ;


 int __maybe_add_mapping (struct dm_thin_new_mapping*) ;
 TYPE_2__* dm_get_mapinfo (struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void overwrite_endio(struct bio *bio, int err)
{
 unsigned long flags;
 struct dm_thin_endio_hook *h = dm_get_mapinfo(bio)->ptr;
 struct dm_thin_new_mapping *m = h->overwrite_mapping;
 struct pool *pool = m->tc->pool;

 m->err = err;

 spin_lock_irqsave(&pool->lock, flags);
 m->prepared = 1;
 __maybe_add_mapping(m);
 spin_unlock_irqrestore(&pool->lock, flags);
}
