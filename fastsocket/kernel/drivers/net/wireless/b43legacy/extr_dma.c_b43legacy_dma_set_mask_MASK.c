#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct b43legacy_wldev *dev, u64 mask)
{
	u64 orig_mask = mask;
	bool fallback = false;
	int err;

	/* Try to set the DMA mask. If it fails, try falling back to a
	 * lower mask, as we can always also support a lower one. */
	while (1) {
		err = FUNC5(dev->dev->dma_dev, mask);
		if (!err) {
			err = FUNC4(dev->dev->dma_dev, mask);
			if (!err)
				break;
		}
		if (mask == FUNC0(64)) {
			mask = FUNC0(32);
			fallback = true;
			continue;
		}
		if (mask == FUNC0(32)) {
			mask = FUNC0(30);
			fallback = true;
			continue;
		}
		FUNC1(dev->wl, "The machine/kernel does not support "
		       "the required %u-bit DMA mask\n",
		       (unsigned int)FUNC3(orig_mask));
		return -EOPNOTSUPP;
	}
	if (fallback) {
		FUNC2(dev->wl, "DMA mask fallback from %u-bit to %u-"
			"bit\n",
			(unsigned int)FUNC3(orig_mask),
			(unsigned int)FUNC3(mask));
	}

	return 0;
}