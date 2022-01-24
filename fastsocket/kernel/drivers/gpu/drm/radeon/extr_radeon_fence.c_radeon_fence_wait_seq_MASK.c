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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u64 ;
struct radeon_device {int /*<<< orphan*/  ring_lock; TYPE_2__* ring; TYPE_1__* fence_drv; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; int /*<<< orphan*/  fence_queue; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_3__ {unsigned long last_activity; int /*<<< orphan*/  last_seq; } ;

/* Variables and functions */
 int EBUSY ; 
 int EDEADLK ; 
 unsigned long RADEON_FENCE_JIFFIES_TIMEOUT ; 
 unsigned int RADEON_NUM_RINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct radeon_device*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,unsigned int) ; 
 scalar_t__ FUNC7 (struct radeon_device*,unsigned int,TYPE_2__*) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct radeon_device *rdev, u64 target_seq,
				 unsigned ring, bool intr, bool lock_ring)
{
	unsigned long timeout, last_activity;
	uint64_t seq;
	unsigned i;
	bool signaled;
	int r;

	while (target_seq > FUNC0(&rdev->fence_drv[ring].last_seq)) {
		if (!rdev->ring[ring].ready) {
			return -EBUSY;
		}

		timeout = jiffies - RADEON_FENCE_JIFFIES_TIMEOUT;
		if (FUNC8(rdev->fence_drv[ring].last_activity, timeout)) {
			/* the normal case, timeout is somewhere before last_activity */
			timeout = rdev->fence_drv[ring].last_activity - timeout;
		} else {
			/* either jiffies wrapped around, or no fence was signaled in the last 500ms
			 * anyway we will just wait for the minimum amount and then check for a lockup
			 */
			timeout = 1;
		}
		seq = FUNC0(&rdev->fence_drv[ring].last_seq);
		/* Save current last activity valuee, used to check for GPU lockups */
		last_activity = rdev->fence_drv[ring].last_activity;

		FUNC9(rdev->ddev, seq);
		FUNC5(rdev, ring);
		if (intr) {
			r = FUNC12(rdev->fence_queue,
				(signaled = FUNC4(rdev, target_seq, ring)),
				timeout);
                } else {
			r = FUNC13(rdev->fence_queue,
				(signaled = FUNC4(rdev, target_seq, ring)),
				timeout);
		}
		FUNC6(rdev, ring);
		if (FUNC11(r < 0)) {
			return r;
		}
		FUNC10(rdev->ddev, seq);

		if (FUNC11(!signaled)) {
			/* we were interrupted for some reason and fence
			 * isn't signaled yet, resume waiting */
			if (r) {
				continue;
			}

			/* check if sequence value has changed since last_activity */
			if (seq != FUNC0(&rdev->fence_drv[ring].last_seq)) {
				continue;
			}

			if (lock_ring) {
				FUNC2(&rdev->ring_lock);
			}

			/* test if somebody else has already decided that this is a lockup */
			if (last_activity != rdev->fence_drv[ring].last_activity) {
				if (lock_ring) {
					FUNC3(&rdev->ring_lock);
				}
				continue;
			}

			if (FUNC7(rdev, ring, &rdev->ring[ring])) {
				/* good news we believe it's a lockup */
				FUNC1(rdev->dev, "GPU lockup (waiting for 0x%016llx last fence id 0x%016llx)\n",
					 target_seq, seq);

				/* change last activity so nobody else think there is a lockup */
				for (i = 0; i < RADEON_NUM_RINGS; ++i) {
					rdev->fence_drv[i].last_activity = jiffies;
				}

				/* mark the ring as not ready any more */
				rdev->ring[ring].ready = false;
				if (lock_ring) {
					FUNC3(&rdev->ring_lock);
				}
				return -EDEADLK;
			}

			if (lock_ring) {
				FUNC3(&rdev->ring_lock);
			}
		}
	}
	return 0;
}