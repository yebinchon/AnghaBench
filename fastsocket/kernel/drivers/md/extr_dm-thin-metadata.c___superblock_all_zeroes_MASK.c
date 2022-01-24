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
struct dm_block_manager {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  scalar_t__ __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  THIN_SUPERBLOCK_LOCATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (struct dm_block*) ; 
 int FUNC2 (struct dm_block_manager*) ; 
 int FUNC3 (struct dm_block_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC4 (struct dm_block*) ; 

__attribute__((used)) static int FUNC5(struct dm_block_manager *bm, int *result)
{
	int r;
	unsigned i;
	struct dm_block *b;
	__le64 *data_le, zero = FUNC0(0);
	unsigned block_size = FUNC2(bm) / sizeof(__le64);

	/*
	 * We can't use a validator here - it may be all zeroes.
	 */
	r = FUNC3(bm, THIN_SUPERBLOCK_LOCATION, NULL, &b);
	if (r)
		return r;

	data_le = FUNC1(b);
	*result = 1;
	for (i = 0; i < block_size; i++) {
		if (data_le[i] != zero) {
			*result = 0;
			break;
		}
	}

	return FUNC4(b);
}