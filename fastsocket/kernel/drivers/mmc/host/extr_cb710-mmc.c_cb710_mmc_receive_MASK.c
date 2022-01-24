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
struct sg_mapping_iter {int dummy; } ;
struct mmc_data {size_t blocks; int blksz; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct cb710_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_C2_READ_PIO_SIZE_MASK ; 
 int /*<<< orphan*/  CB710_MMC_CONFIG2_PORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*) ; 
 int FUNC1 (struct cb710_slot*,struct sg_mapping_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_mapping_iter*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct cb710_slot *slot, struct mmc_data *data)
{
	struct sg_mapping_iter miter;
	size_t len, blocks = data->blocks;
	int err = 0;

	/* TODO: I don't know how/if the hardware handles non-16B-boundary blocks
	 * except single 8B block */
	if (FUNC5(data->blksz & 15 && (data->blocks != 1 || data->blksz != 8)))
		return -EINVAL;

	FUNC3(&miter, data->sg, data->sg_len, SG_MITER_TO_SG);

	FUNC2(slot, CB710_MMC_CONFIG2_PORT,
		15, CB710_MMC_C2_READ_PIO_SIZE_MASK);

	FUNC0(slot);

	while (blocks-- > 0) {
		len = data->blksz;

		while (len >= 16) {
			err = FUNC1(slot, &miter, 4);
			if (err)
				goto out;
			len -= 16;
		}

		if (!len)
			continue;

		FUNC2(slot, CB710_MMC_CONFIG2_PORT,
			len - 1, CB710_MMC_C2_READ_PIO_SIZE_MASK);

		len = (len >= 8) ? 4 : 2;
		err = FUNC1(slot, &miter, len);
		if (err)
			goto out;
	}
out:
	FUNC4(&miter);
	return err;
}