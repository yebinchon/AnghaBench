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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ size; } ;
struct sst25l_flash {int /*<<< orphan*/  lock; TYPE_2__* spi; TYPE_1__ mtd; } ;
struct mtd_info {int erasesize; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MTD_ERASE_DONE ; 
 int /*<<< orphan*/  MTD_ERASE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct erase_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sst25l_flash*,int) ; 
 int FUNC5 (struct sst25l_flash*) ; 
 struct sst25l_flash* FUNC6 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd, struct erase_info *instr)
{
	struct sst25l_flash *flash = FUNC6(mtd);
	uint32_t addr, end;
	int err;

	/* Sanity checks */
	if (instr->addr + instr->len > flash->mtd.size)
		return -EINVAL;

	if ((uint32_t)instr->len % mtd->erasesize)
		return -EINVAL;

	if ((uint32_t)instr->addr % mtd->erasesize)
		return -EINVAL;

	addr = instr->addr;
	end = addr + instr->len;

	FUNC2(&flash->lock);

	err = FUNC5(flash);
	if (err) {
		FUNC3(&flash->lock);
		return err;
	}

	while (addr < end) {
		err = FUNC4(flash, addr);
		if (err) {
			FUNC3(&flash->lock);
			instr->state = MTD_ERASE_FAILED;
			FUNC0(&flash->spi->dev, "Erase failed\n");
			return err;
		}

		addr += mtd->erasesize;
	}

	FUNC3(&flash->lock);

	instr->state = MTD_ERASE_DONE;
	FUNC1(instr);
	return 0;
}