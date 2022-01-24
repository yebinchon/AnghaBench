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
struct nouveau_fence_priv {scalar_t__ uevent; } ;
struct nouveau_fence {scalar_t__ timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_1__* drm; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {struct nouveau_fence_priv* fence; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence*) ; 
 int FUNC3 (struct nouveau_fence*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC7(struct nouveau_fence *fence, bool lazy, bool intr)
{
	struct nouveau_channel *chan = fence->channel;
	struct nouveau_fence_priv *priv = chan ? chan->drm->fence : NULL;
	unsigned long sleep_time = NSEC_PER_MSEC / 1000;
	ktime_t t;
	int ret = 0;

	while (priv && priv->uevent && lazy && !FUNC2(fence)) {
		ret = FUNC3(fence, intr);
		if (ret < 0)
			return ret;
	}

	while (!FUNC2(fence)) {
		if (fence->timeout && FUNC6(jiffies, fence->timeout)) {
			ret = -EBUSY;
			break;
		}

		FUNC0(intr ? TASK_INTERRUPTIBLE :
					   TASK_UNINTERRUPTIBLE);
		if (lazy) {
			t = FUNC1(0, sleep_time);
			FUNC4(&t, HRTIMER_MODE_REL);
			sleep_time *= 2;
			if (sleep_time > NSEC_PER_MSEC)
				sleep_time = NSEC_PER_MSEC;
		}

		if (intr && FUNC5(current)) {
			ret = -ERESTARTSYS;
			break;
		}
	}

	FUNC0(TASK_RUNNING);
	return ret;
}