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
struct nouveau_fence_chan {int (* sync ) (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ;} ;
struct nouveau_fence {struct nouveau_channel* channel; } ;
struct nouveau_channel {struct nouveau_fence_chan* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_fence*) ; 
 int FUNC1 (struct nouveau_fence*,int,int) ; 
 int FUNC2 (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ; 
 scalar_t__ FUNC3 (int) ; 

int
FUNC4(struct nouveau_fence *fence, struct nouveau_channel *chan)
{
	struct nouveau_fence_chan *fctx = chan->fence;
	struct nouveau_channel *prev;
	int ret = 0;

	prev = fence ? fence->channel : NULL;
	if (prev) {
		if (FUNC3(prev != chan && !FUNC0(fence))) {
			ret = fctx->sync(fence, prev, chan);
			if (FUNC3(ret))
				ret = FUNC1(fence, true, false);
		}
	}

	return ret;
}