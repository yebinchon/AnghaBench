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
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct disk_metadata_index {scalar_t__ csum; int /*<<< orphan*/  padding; int /*<<< orphan*/  blocknr; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  INDEX_CSUM_XOR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct disk_metadata_index* FUNC2 (struct dm_block*) ; 
 scalar_t__ FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_block_validator *v,
		       struct dm_block *b,
		       size_t block_size)
{
	struct disk_metadata_index *mi_le = FUNC2(b);
	__le32 csum_disk;

	if (FUNC3(b) != FUNC6(mi_le->blocknr)) {
		FUNC0("index_check failed: blocknr %llu != wanted %llu",
			    FUNC6(mi_le->blocknr), FUNC3(b));
		return -ENOTBLK;
	}

	csum_disk = FUNC1(FUNC4(&mi_le->padding,
					       block_size - sizeof(__le32),
					       INDEX_CSUM_XOR));
	if (csum_disk != mi_le->csum) {
		FUNC0("index_check failed: csum %u != wanted %u",
			    FUNC5(csum_disk), FUNC5(mi_le->csum));
		return -EILSEQ;
	}

	return 0;
}