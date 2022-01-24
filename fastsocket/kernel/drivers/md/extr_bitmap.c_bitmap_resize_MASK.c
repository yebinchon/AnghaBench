#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bitmap_storage {int file_pages; scalar_t__ sb_page; int /*<<< orphan*/ * file; } ;
struct bitmap_page {int dummy; } ;
struct bitmap_counts {unsigned long chunks; int chunkshift; long pages; long missing_pages; int /*<<< orphan*/  lock; struct bitmap_page* bp; } ;
struct bitmap {TYPE_3__* mddev; struct bitmap_counts counts; struct bitmap_storage storage; } ;
typedef  int /*<<< orphan*/  store ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  bitmap_super_t ;
typedef  int bitmap_counter_t ;
struct TYPE_6__ {long space; int chunksize; int /*<<< orphan*/  external; scalar_t__ file; scalar_t__ offset; } ;
struct TYPE_7__ {TYPE_1__* pers; TYPE_2__ bitmap_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* quiesce ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 int BITMAP_BLOCK_SHIFT ; 
 int /*<<< orphan*/  BITMAP_PAGE_DIRTY ; 
 long FUNC0 (unsigned long,int) ; 
 unsigned long FUNC1 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 int NEEDED_MASK ; 
 int PAGE_COUNTER_RATIO ; 
 int /*<<< orphan*/  FUNC3 (struct bitmap_counts*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bitmap*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap_storage*) ; 
 int* FUNC6 (struct bitmap_counts*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap_counts*,int) ; 
 int FUNC8 (struct bitmap_storage*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bitmap*) ; 
 int FUNC10 (int) ; 
 struct bitmap_page* FUNC11 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bitmap_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct bitmap*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int) ; 

int FUNC21(struct bitmap *bitmap, sector_t blocks,
		  int chunksize, int init)
{
	/* If chunk_size is 0, choose an appropriate chunk size.
	 * Then possibly allocate new storage space.
	 * Then quiesce, copy bits, replace bitmap, and re-start
	 *
	 * This function is called both to set up the initial bitmap
	 * and to resize the bitmap while the array is active.
	 * If this happens as a result of the array being resized,
	 * chunksize will be zero, and we need to choose a suitable
	 * chunksize, otherwise we use what we are given.
	 */
	struct bitmap_storage store;
	struct bitmap_counts old_counts;
	unsigned long chunks;
	sector_t block;
	sector_t old_blocks, new_blocks;
	int chunkshift;
	int ret = 0;
	long pages;
	struct bitmap_page *new_bp;

	if (chunksize == 0) {
		/* If there is enough space, leave the chunk size unchanged,
		 * else increase by factor of two until there is enough space.
		 */
		long bytes;
		long space = bitmap->mddev->bitmap_info.space;

		if (space == 0) {
			/* We don't know how much space there is, so limit
			 * to current size - in sectors.
			 */
			bytes = FUNC0(bitmap->counts.chunks, 8);
			if (!bitmap->mddev->bitmap_info.external)
				bytes += sizeof(bitmap_super_t);
			space = FUNC0(bytes, 512);
			bitmap->mddev->bitmap_info.space = space;
		}
		chunkshift = bitmap->counts.chunkshift;
		chunkshift--;
		do {
			/* 'chunkshift' is shift from block size to chunk size */
			chunkshift++;
			chunks = FUNC1(blocks, 1 << chunkshift);
			bytes = FUNC0(chunks, 8);
			if (!bitmap->mddev->bitmap_info.external)
				bytes += sizeof(bitmap_super_t);
		} while (bytes > (space << 9));
	} else
		chunkshift = FUNC10(~chunksize) - BITMAP_BLOCK_SHIFT;

	chunks = FUNC1(blocks, 1 << chunkshift);
	FUNC13(&store, 0, sizeof(store));
	if (bitmap->mddev->bitmap_info.offset || bitmap->mddev->bitmap_info.file)
		ret = FUNC8(&store, chunks,
					   !bitmap->mddev->bitmap_info.external);
	if (ret)
		goto err;

	pages = FUNC0(chunks, PAGE_COUNTER_RATIO);

	new_bp = FUNC11(pages * sizeof(*new_bp), GFP_KERNEL);
	ret = -ENOMEM;
	if (!new_bp) {
		FUNC5(&store);
		goto err;
	}

	if (!init)
		bitmap->mddev->pers->quiesce(bitmap->mddev, 1);

	store.file = bitmap->storage.file;
	bitmap->storage.file = NULL;

	if (store.sb_page && bitmap->storage.sb_page)
		FUNC12(FUNC15(store.sb_page),
		       FUNC15(bitmap->storage.sb_page),
		       sizeof(bitmap_super_t));
	FUNC5(&bitmap->storage);
	bitmap->storage = store;

	old_counts = bitmap->counts;
	bitmap->counts.bp = new_bp;
	bitmap->counts.pages = pages;
	bitmap->counts.missing_pages = pages;
	bitmap->counts.chunkshift = chunkshift;
	bitmap->counts.chunks = chunks;
	bitmap->mddev->bitmap_info.chunksize = 1 << (chunkshift +
						     BITMAP_BLOCK_SHIFT);

	blocks = FUNC14(old_counts.chunks << old_counts.chunkshift,
		     chunks << chunkshift);

	FUNC17(&bitmap->counts.lock);
	for (block = 0; block < blocks; ) {
		bitmap_counter_t *bmc_old, *bmc_new;
		int set;

		bmc_old = FUNC6(&old_counts, block,
					     &old_blocks, 0);
		set = bmc_old && FUNC2(*bmc_old);

		if (set) {
			bmc_new = FUNC6(&bitmap->counts, block,
						     &new_blocks, 1);
			if (*bmc_new == 0) {
				/* need to set on-disk bits too. */
				sector_t end = block + new_blocks;
				sector_t start = block >> chunkshift;
				start <<= chunkshift;
				while (start < end) {
					FUNC4(bitmap, block);
					start += 1 << chunkshift;
				}
				*bmc_new = 2;
				FUNC3(&bitmap->counts,
						  block, 1);
				FUNC7(&bitmap->counts,
						   block);
			}
			*bmc_new |= NEEDED_MASK;
			if (new_blocks < old_blocks)
				old_blocks = new_blocks;
		}
		block += old_blocks;
	}

	if (!init) {
		int i;
		while (block < (chunks << chunkshift)) {
			bitmap_counter_t *bmc;
			bmc = FUNC6(&bitmap->counts, block,
						 &new_blocks, 1);
			if (bmc) {
				/* new space.  It needs to be resynced, so
				 * we set NEEDED_MASK.
				 */
				if (*bmc == 0) {
					*bmc = NEEDED_MASK | 2;
					FUNC3(&bitmap->counts,
							  block, 1);
					FUNC7(&bitmap->counts,
							   block);
				}
			}
			block += new_blocks;
		}
		for (i = 0; i < bitmap->storage.file_pages; i++)
			FUNC16(bitmap, i, BITMAP_PAGE_DIRTY);
	}
	FUNC18(&bitmap->counts.lock);

	if (!init) {
		FUNC9(bitmap);
		bitmap->mddev->pers->quiesce(bitmap->mddev, 0);
	}
	ret = 0;
err:
	return ret;
}