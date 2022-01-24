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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct radeon_device {int /*<<< orphan*/  exclusive_lock; int /*<<< orphan*/  dev; TYPE_1__ mman; int /*<<< orphan*/  ddev; int /*<<< orphan*/ * ring; } ;

/* Variables and functions */
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 unsigned int FUNC10 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct radeon_device *rdev)
{
	unsigned ring_sizes[RADEON_NUM_RINGS];
	uint32_t *ring_data[RADEON_NUM_RINGS];

	bool saved = false;

	int i, r;
	int resched;

	FUNC2(&rdev->exclusive_lock);
	FUNC12(rdev);
	/* block TTM */
	resched = FUNC14(&rdev->mman.bdev);
	FUNC13(rdev);

	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		ring_sizes[i] = FUNC10(rdev, &rdev->ring[i],
						   &ring_data[i]);
		if (ring_sizes[i]) {
			saved = true;
			FUNC1(rdev->dev, "Saved %d dwords of commands "
				 "on ring %d.\n", ring_sizes[i], i);
		}
	}

retry:
	r = FUNC5(rdev);
	if (!r) {
		FUNC1(rdev->dev, "GPU reset succeeded, trying to resume\n");
		FUNC9(rdev);
	}

	FUNC8(rdev);

	if (!r) {
		for (i = 0; i < RADEON_NUM_RINGS; ++i) {
			FUNC11(rdev, &rdev->ring[i],
					    ring_sizes[i], ring_data[i]);
			ring_sizes[i] = 0;
			ring_data[i] = NULL;
		}

		r = FUNC7(rdev);
		if (r) {
			FUNC0(rdev->dev, "ib ring test failed (%d).\n", r);
			if (saved) {
				saved = false;
				FUNC13(rdev);
				goto retry;
			}
		}
	} else {
		FUNC6(rdev);
		for (i = 0; i < RADEON_NUM_RINGS; ++i) {
			FUNC4(ring_data[i]);
		}
	}

	FUNC3(rdev->ddev);

	FUNC15(&rdev->mman.bdev, resched);
	if (r) {
		/* bad news, how to tell it to userspace ? */
		FUNC1(rdev->dev, "GPU reset failed\n");
	}

	FUNC16(&rdev->exclusive_lock);
	return r;
}