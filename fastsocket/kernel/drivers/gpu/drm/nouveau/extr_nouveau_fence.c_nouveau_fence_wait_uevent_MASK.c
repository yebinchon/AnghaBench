#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nouveau_fifo {int /*<<< orphan*/  uevent; } ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct nouveau_fence_uevent {TYPE_2__ handler; struct nouveau_fence_priv* priv; } ;
struct nouveau_fence_priv {int /*<<< orphan*/  waiting; } ;
struct nouveau_fence {int timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_1__* drm; } ;
struct TYPE_4__ {struct nouveau_fence_priv* fence; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EBUSY ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  nouveau_fence_wait_uevent_handler ; 
 struct nouveau_fifo* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC11(struct nouveau_fence *fence, bool intr)

{
	struct nouveau_channel *chan = fence->channel;
	struct nouveau_fifo *pfifo = FUNC3(chan->drm->device);
	struct nouveau_fence_priv *priv = chan->drm->fence;
	struct nouveau_fence_uevent uevent = {
		.handler.func = nouveau_fence_wait_uevent_handler,
		.priv = priv,
	};
	int ret = 0;

	FUNC0(pfifo->uevent, 0, &uevent.handler);

	if (fence->timeout) {
		unsigned long timeout = fence->timeout - jiffies;

		if (FUNC5(jiffies, fence->timeout)) {
			if (intr) {
				ret = FUNC9(
						priv->waiting,
						FUNC2(fence),
						timeout);
			} else {
				ret = FUNC10(priv->waiting,
						FUNC2(fence),
						timeout);
			}
		}

		if (ret >= 0) {
			fence->timeout = jiffies + ret;
			if (FUNC4(jiffies, fence->timeout))
				ret = -EBUSY;
		}
	} else {
		if (intr) {
			ret = FUNC8(priv->waiting,
					FUNC2(fence));
		} else {
			FUNC7(priv->waiting, FUNC2(fence));
		}
	}

	FUNC1(pfifo->uevent, 0, &uevent.handler);
	if (FUNC6(ret < 0))
		return ret;

	return 0;
}