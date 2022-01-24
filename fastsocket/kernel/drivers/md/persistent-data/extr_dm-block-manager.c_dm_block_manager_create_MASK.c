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
struct dm_block_manager {int read_only; int /*<<< orphan*/  bufio; } ;
struct buffer_aux {int dummy; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dm_block_manager* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_block_manager_alloc_callback ; 
 int /*<<< orphan*/  dm_block_manager_write_callback ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*,unsigned int,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_block_manager*) ; 
 struct dm_block_manager* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct dm_block_manager *FUNC6(struct block_device *bdev,
						 unsigned block_size,
						 unsigned cache_size,
						 unsigned max_held_per_thread)
{
	int r;
	struct dm_block_manager *bm;

	bm = FUNC5(sizeof(*bm), GFP_KERNEL);
	if (!bm) {
		r = -ENOMEM;
		goto bad;
	}

	bm->bufio = FUNC3(bdev, block_size, max_held_per_thread,
					   sizeof(struct buffer_aux),
					   dm_block_manager_alloc_callback,
					   dm_block_manager_write_callback);
	if (FUNC1(bm->bufio)) {
		r = FUNC2(bm->bufio);
		FUNC4(bm);
		goto bad;
	}

	bm->read_only = false;

	return bm;

bad:
	return FUNC0(r);
}