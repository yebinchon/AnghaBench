
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_pool {int type; char* name; int pools; int dev_name; scalar_t__ nrefills; int size; int gfp_flags; scalar_t__ nfrees; scalar_t__ npages_in_use; scalar_t__ npages_free; struct device* dev; int lock; int inuse_list; int free_list; struct dma_pool* pool; } ;
struct device_pools {int type; char* name; int pools; int dev_name; scalar_t__ nrefills; int size; int gfp_flags; scalar_t__ nfrees; scalar_t__ npages_in_use; scalar_t__ npages_free; struct device* dev; int lock; int inuse_list; int free_list; struct device_pools* pool; } ;
struct device {int dma_pools; } ;
typedef int gfp_t ;
typedef enum pool_type { ____Placeholder_pool_type } pool_type ;
struct TYPE_2__ {int lock; int npools; int pools; } ;


 int ENODEV ;
 int ENOMEM ;
 struct dma_pool* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IS_CACHED ;
 int IS_DMA32 ;
 int IS_UC ;
 int IS_UNDEFINED ;
 int IS_WC ;
 int PAGE_SIZE ;
 TYPE_1__* _manager ;
 char* dev_driver_string (struct device*) ;
 char* dev_name (struct device*) ;
 int dev_to_node (struct device*) ;
 int devres_add (struct device*,struct dma_pool**) ;
 struct dma_pool** devres_alloc (int ,int,int ) ;
 int devres_free (struct dma_pool**) ;
 int kfree (struct dma_pool*) ;
 struct dma_pool* kmalloc_node (int,int ,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,char*,...) ;
 int spin_lock_init (int *) ;
 int ttm_dma_pool_release ;

__attribute__((used)) static struct dma_pool *ttm_dma_pool_init(struct device *dev, gfp_t flags,
       enum pool_type type)
{
 char *n[] = {"wc", "uc", "cached", " dma32", "unknown",};
 enum pool_type t[] = {IS_WC, IS_UC, IS_CACHED, IS_DMA32, IS_UNDEFINED};
 struct device_pools *sec_pool = ((void*)0);
 struct dma_pool *pool = ((void*)0), **ptr;
 unsigned i;
 int ret = -ENODEV;
 char *p;

 if (!dev)
  return ((void*)0);

 ptr = devres_alloc(ttm_dma_pool_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 ret = -ENOMEM;

 pool = kmalloc_node(sizeof(struct dma_pool), GFP_KERNEL,
       dev_to_node(dev));
 if (!pool)
  goto err_mem;

 sec_pool = kmalloc_node(sizeof(struct device_pools), GFP_KERNEL,
    dev_to_node(dev));
 if (!sec_pool)
  goto err_mem;

 INIT_LIST_HEAD(&sec_pool->pools);
 sec_pool->dev = dev;
 sec_pool->pool = pool;

 INIT_LIST_HEAD(&pool->free_list);
 INIT_LIST_HEAD(&pool->inuse_list);
 INIT_LIST_HEAD(&pool->pools);
 spin_lock_init(&pool->lock);
 pool->dev = dev;
 pool->npages_free = pool->npages_in_use = 0;
 pool->nfrees = 0;
 pool->gfp_flags = flags;
 pool->size = PAGE_SIZE;
 pool->type = type;
 pool->nrefills = 0;
 p = pool->name;
 for (i = 0; i < 5; i++) {
  if (type & t[i]) {
   p += snprintf(p, sizeof(pool->name) - (p - pool->name),
          "%s", n[i]);
  }
 }
 *p = 0;


 snprintf(pool->dev_name, sizeof(pool->dev_name), "%s %s",
   dev_driver_string(dev), dev_name(dev));
 mutex_lock(&_manager->lock);

 list_add(&sec_pool->pools, &_manager->pools);
 _manager->npools++;

 list_add(&pool->pools, &dev->dma_pools);
 mutex_unlock(&_manager->lock);

 *ptr = pool;
 devres_add(dev, ptr);

 return pool;
err_mem:
 devres_free(ptr);
 kfree(sec_pool);
 kfree(pool);
 return ERR_PTR(ret);
}
