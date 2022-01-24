#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_exception_store {unsigned int chunk_size; unsigned int chunk_mask; scalar_t__ chunk_shift; int /*<<< orphan*/  snap; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int INT_MAX ; 
 int SECTOR_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

int FUNC5(struct dm_exception_store *store,
				      unsigned chunk_size,
				      char **error)
{
	/* Check chunk_size is a power of 2 */
	if (!FUNC4(chunk_size)) {
		*error = "Chunk size is not a power of 2";
		return -EINVAL;
	}

	/* Validate the chunk size against the device block size */
	if (chunk_size %
	    (FUNC0(FUNC1(store->snap)->bdev) >> 9) ||
	    chunk_size %
	    (FUNC0(FUNC2(store->snap)->bdev) >> 9)) {
		*error = "Chunk size is not a multiple of device blocksize";
		return -EINVAL;
	}

	if (chunk_size > INT_MAX >> SECTOR_SHIFT) {
		*error = "Chunk size is too high";
		return -EINVAL;
	}

	store->chunk_size = chunk_size;
	store->chunk_mask = chunk_size - 1;
	store->chunk_shift = FUNC3(chunk_size) - 1;

	return 0;
}