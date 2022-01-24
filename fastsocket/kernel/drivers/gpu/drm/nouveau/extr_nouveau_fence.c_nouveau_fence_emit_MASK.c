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
struct nouveau_fence_chan {int (* emit ) (struct nouveau_fence*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; scalar_t__ sequence; } ;
struct nouveau_fence {int /*<<< orphan*/  head; int /*<<< orphan*/  kref; scalar_t__ sequence; scalar_t__ timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {struct nouveau_fence_chan* fence; } ;

/* Variables and functions */
 int DRM_HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nouveau_fence*) ; 

int
FUNC5(struct nouveau_fence *fence, struct nouveau_channel *chan)
{
	struct nouveau_fence_chan *fctx = chan->fence;
	int ret;

	fence->channel  = chan;
	fence->timeout  = jiffies + (3 * DRM_HZ);
	fence->sequence = ++fctx->sequence;

	ret = fctx->emit(fence);
	if (!ret) {
		FUNC0(&fence->kref);
		FUNC2(&fctx->lock);
		FUNC1(&fence->head, &fctx->pending);
		FUNC3(&fctx->lock);
	}

	return ret;
}