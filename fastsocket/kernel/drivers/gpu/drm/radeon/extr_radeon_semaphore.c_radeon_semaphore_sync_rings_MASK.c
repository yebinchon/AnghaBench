#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_semaphore {int /*<<< orphan*/  gpu_addr; } ;
struct radeon_device {TYPE_1__* ring; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_semaphore_wait_addr; int /*<<< orphan*/  last_semaphore_signal_addr; int /*<<< orphan*/  ready; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct radeon_device*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int,struct radeon_semaphore*) ; 

int FUNC5(struct radeon_device *rdev,
				struct radeon_semaphore *semaphore,
				int signaler, int waiter)
{
	int r;

	/* no need to signal and wait on the same ring */
	if (signaler == waiter) {
		return 0;
	}

	/* prevent GPU deadlocks */
	if (!rdev->ring[signaler].ready) {
		FUNC0(rdev->dev, "Trying to sync to a disabled ring!");
		return -EINVAL;
	}

	r = FUNC1(rdev, &rdev->ring[signaler], 8);
	if (r) {
		return r;
	}
	FUNC3(rdev, signaler, semaphore);
	FUNC2(rdev, &rdev->ring[signaler]);

	/* we assume caller has already allocated space on waiters ring */
	FUNC4(rdev, waiter, semaphore);

	/* for debugging lockup only, used by sysfs debug files */
	rdev->ring[signaler].last_semaphore_signal_addr = semaphore->gpu_addr;
	rdev->ring[waiter].last_semaphore_wait_addr = semaphore->gpu_addr;

	return 0;
}