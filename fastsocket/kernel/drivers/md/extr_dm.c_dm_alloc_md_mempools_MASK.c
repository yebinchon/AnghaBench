#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dm_md_mempools {void* io_pool; void* tio_pool; int /*<<< orphan*/  bs; } ;

/* Variables and functions */
 unsigned int DM_TYPE_BIO_BASED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MIN_IOS ; 
 int /*<<< orphan*/  _io_cache ; 
 int /*<<< orphan*/  _rq_bio_info_cache ; 
 int /*<<< orphan*/  _rq_tio_cache ; 
 int /*<<< orphan*/  _tio_cache ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_md_mempools*) ; 
 struct dm_md_mempools* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

struct dm_md_mempools *FUNC7(unsigned type, unsigned integrity)
{
	struct dm_md_mempools *pools = FUNC4(sizeof(*pools), GFP_KERNEL);
	unsigned int pool_size = (type == DM_TYPE_BIO_BASED) ? 16 : MIN_IOS;

	if (!pools)
		return NULL;

	pools->io_pool = (type == DM_TYPE_BIO_BASED) ?
			 FUNC5(MIN_IOS, _io_cache) :
			 FUNC5(MIN_IOS, _rq_bio_info_cache);
	if (!pools->io_pool)
		goto free_pools_and_out;

	pools->tio_pool = (type == DM_TYPE_BIO_BASED) ?
			  FUNC5(MIN_IOS, _tio_cache) :
			  FUNC5(MIN_IOS, _rq_tio_cache);
	if (!pools->tio_pool)
		goto free_io_pool_and_out;

	pools->bs = FUNC0(pool_size, 0);
	if (!pools->bs)
		goto free_tio_pool_and_out;

	if (integrity && FUNC2(pools->bs, pool_size))
		goto free_bioset_and_out;

	return pools;

free_bioset_and_out:
	FUNC1(pools->bs);

free_tio_pool_and_out:
	FUNC6(pools->tio_pool);

free_io_pool_and_out:
	FUNC6(pools->io_pool);

free_pools_and_out:
	FUNC3(pools);

	return NULL;
}