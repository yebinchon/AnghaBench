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
struct thin_disk_superblock {scalar_t__ csum; int /*<<< orphan*/  flags; int /*<<< orphan*/  magic; int /*<<< orphan*/  blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  SUPERBLOCK_CSUM_XOR ; 
 scalar_t__ THIN_SUPERBLOCK_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct thin_disk_superblock* FUNC2 (struct dm_block*) ; 
 scalar_t__ FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC5 (scalar_t__) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_block_validator *v,
		    struct dm_block *b,
		    size_t block_size)
{
	struct thin_disk_superblock *disk_super = FUNC2(b);
	__le32 csum_le;

	if (FUNC3(b) != FUNC6(disk_super->blocknr)) {
		FUNC0("sb_check failed: blocknr %llu: "
		      "wanted %llu", FUNC6(disk_super->blocknr),
		      (unsigned long long)FUNC3(b));
		return -ENOTBLK;
	}

	if (FUNC6(disk_super->magic) != THIN_SUPERBLOCK_MAGIC) {
		FUNC0("sb_check failed: magic %llu: "
		      "wanted %llu", FUNC6(disk_super->magic),
		      (unsigned long long)THIN_SUPERBLOCK_MAGIC);
		return -EILSEQ;
	}

	csum_le = FUNC1(FUNC4(&disk_super->flags,
					     block_size - sizeof(__le32),
					     SUPERBLOCK_CSUM_XOR));
	if (csum_le != disk_super->csum) {
		FUNC0("sb_check failed: csum %u: wanted %u",
		      FUNC5(csum_le), FUNC5(disk_super->csum));
		return -EILSEQ;
	}

	return 0;
}