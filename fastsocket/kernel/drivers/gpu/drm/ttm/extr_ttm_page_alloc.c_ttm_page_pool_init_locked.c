
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_page_pool {int fill_lock; int gfp_flags; char* name; scalar_t__ nfrees; scalar_t__ npages; int list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ttm_page_pool_init_locked(struct ttm_page_pool *pool, int flags,
  char *name)
{
 spin_lock_init(&pool->lock);
 pool->fill_lock = 0;
 INIT_LIST_HEAD(&pool->list);
 pool->npages = pool->nfrees = 0;
 pool->gfp_flags = flags;
 pool->name = name;
}
