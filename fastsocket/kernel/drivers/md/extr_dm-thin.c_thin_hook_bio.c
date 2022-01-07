
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; } ;
struct pool {int endio_hook_pool; } ;
struct dm_thin_endio_hook {struct bio* bio; int * overwrite_mapping; int * all_io_entry; int * shared_read_entry; struct thin_c* tc; } ;
struct bio {int dummy; } ;


 int GFP_NOIO ;
 struct dm_thin_endio_hook* mempool_alloc (int ,int ) ;

__attribute__((used)) static struct dm_thin_endio_hook *thin_hook_bio(struct thin_c *tc, struct bio *bio)
{
 struct pool *pool = tc->pool;
 struct dm_thin_endio_hook *h = mempool_alloc(pool->endio_hook_pool, GFP_NOIO);

 h->tc = tc;
 h->shared_read_entry = ((void*)0);
 h->all_io_entry = ((void*)0);
 h->overwrite_mapping = ((void*)0);
 h->bio = bio;

 return h;
}
