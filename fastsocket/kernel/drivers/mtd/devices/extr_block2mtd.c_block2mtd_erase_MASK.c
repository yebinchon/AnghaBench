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
struct mtd_info {struct block2mtd_dev* priv; } ;
struct erase_info {size_t addr; size_t len; void* state; } ;
struct block2mtd_dev {int /*<<< orphan*/  write_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 void* MTD_ERASE_DONE ; 
 void* MTD_ERASE_FAILED ; 
 void* MTD_ERASING ; 
 int FUNC1 (struct block2mtd_dev*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct erase_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, struct erase_info *instr)
{
	struct block2mtd_dev *dev = mtd->priv;
	size_t from = instr->addr;
	size_t len = instr->len;
	int err;

	instr->state = MTD_ERASING;
	FUNC3(&dev->write_mutex);
	err = FUNC1(dev, from, len);
	FUNC4(&dev->write_mutex);
	if (err) {
		FUNC0("erase failed err = %d", err);
		instr->state = MTD_ERASE_FAILED;
	} else
		instr->state = MTD_ERASE_DONE;

	instr->state = MTD_ERASE_DONE;
	FUNC2(instr);
	return err;
}