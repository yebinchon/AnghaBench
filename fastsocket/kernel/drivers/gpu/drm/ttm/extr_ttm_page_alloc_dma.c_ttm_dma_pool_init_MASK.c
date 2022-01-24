#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dma_pool {int type; char* name; int /*<<< orphan*/  pools; int /*<<< orphan*/  dev_name; scalar_t__ nrefills; int /*<<< orphan*/  size; int /*<<< orphan*/  gfp_flags; scalar_t__ nfrees; scalar_t__ npages_in_use; scalar_t__ npages_free; struct device* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  inuse_list; int /*<<< orphan*/  free_list; struct dma_pool* pool; } ;
struct device_pools {int type; char* name; int /*<<< orphan*/  pools; int /*<<< orphan*/  dev_name; scalar_t__ nrefills; int /*<<< orphan*/  size; int /*<<< orphan*/  gfp_flags; scalar_t__ nfrees; scalar_t__ npages_in_use; scalar_t__ npages_free; struct device* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  inuse_list; int /*<<< orphan*/  free_list; struct device_pools* pool; } ;
struct device {int /*<<< orphan*/  dma_pools; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum pool_type { ____Placeholder_pool_type } pool_type ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  npools; int /*<<< orphan*/  pools; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct dma_pool* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IS_CACHED ; 
 int IS_DMA32 ; 
 int IS_UC ; 
 int IS_UNDEFINED ; 
 int IS_WC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* _manager ; 
 char* FUNC2 (struct device*) ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct dma_pool**) ; 
 struct dma_pool** FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_pool**) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_pool*) ; 
 struct dma_pool* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttm_dma_pool_release ; 

__attribute__((used)) static struct dma_pool *FUNC15(struct device *dev, gfp_t flags,
					  enum pool_type type)
{
	char *n[] = {"wc", "uc", "cached", " dma32", "unknown",};
	enum pool_type t[] = {IS_WC, IS_UC, IS_CACHED, IS_DMA32, IS_UNDEFINED};
	struct device_pools *sec_pool = NULL;
	struct dma_pool *pool = NULL, **ptr;
	unsigned i;
	int ret = -ENODEV;
	char *p;

	if (!dev)
		return NULL;

	ptr = FUNC6(ttm_dma_pool_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	ret = -ENOMEM;

	pool = FUNC9(sizeof(struct dma_pool), GFP_KERNEL,
			    FUNC4(dev));
	if (!pool)
		goto err_mem;

	sec_pool = FUNC9(sizeof(struct device_pools), GFP_KERNEL,
				FUNC4(dev));
	if (!sec_pool)
		goto err_mem;

	FUNC1(&sec_pool->pools);
	sec_pool->dev = dev;
	sec_pool->pool =  pool;

	FUNC1(&pool->free_list);
	FUNC1(&pool->inuse_list);
	FUNC1(&pool->pools);
	FUNC14(&pool->lock);
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
			p += FUNC13(p, sizeof(pool->name) - (p - pool->name),
				      "%s", n[i]);
		}
	}
	*p = 0;
	/* We copy the name for pr_ calls b/c when dma_pool_destroy is called
	 * - the kobj->name has already been deallocated.*/
	FUNC13(pool->dev_name, sizeof(pool->dev_name), "%s %s",
		 FUNC2(dev), FUNC3(dev));
	FUNC11(&_manager->lock);
	/* You can get the dma_pool from either the global: */
	FUNC10(&sec_pool->pools, &_manager->pools);
	_manager->npools++;
	/* or from 'struct device': */
	FUNC10(&pool->pools, &dev->dma_pools);
	FUNC12(&_manager->lock);

	*ptr = pool;
	FUNC5(dev, ptr);

	return pool;
err_mem:
	FUNC7(ptr);
	FUNC8(sec_pool);
	FUNC8(pool);
	return FUNC0(ret);
}