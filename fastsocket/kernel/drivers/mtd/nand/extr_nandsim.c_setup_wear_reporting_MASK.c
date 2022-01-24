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
struct mtd_info {int /*<<< orphan*/  erasesize; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  erase_block_wear ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rptwear ; 
 int wear_eb_count ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd)
{
	size_t mem;

	if (!rptwear)
		return 0;
	wear_eb_count = FUNC1(mtd->size, mtd->erasesize);
	mem = wear_eb_count * sizeof(unsigned long);
	if (mem / sizeof(unsigned long) != wear_eb_count) {
		FUNC0("Too many erase blocks for wear reporting\n");
		return -ENOMEM;
	}
	erase_block_wear = FUNC2(mem, GFP_KERNEL);
	if (!erase_block_wear) {
		FUNC0("Too many erase blocks for wear reporting\n");
		return -ENOMEM;
	}
	return 0;
}