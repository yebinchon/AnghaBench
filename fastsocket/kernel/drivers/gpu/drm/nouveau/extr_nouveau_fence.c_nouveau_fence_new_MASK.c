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
struct nouveau_fence {int sysmem; int /*<<< orphan*/  kref; } ;
struct nouveau_channel {int /*<<< orphan*/  fence; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_fence* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_fence*,struct nouveau_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_fence**) ; 
 scalar_t__ FUNC4 (int) ; 

int
FUNC5(struct nouveau_channel *chan, bool sysmem,
		  struct nouveau_fence **pfence)
{
	struct nouveau_fence *fence;
	int ret = 0;

	if (FUNC4(!chan->fence))
		return -ENODEV;

	fence = FUNC1(sizeof(*fence), GFP_KERNEL);
	if (!fence)
		return -ENOMEM;

	fence->sysmem = sysmem;
	FUNC0(&fence->kref);

	ret = FUNC2(fence, chan);
	if (ret)
		FUNC3(&fence);

	*pfence = fence;
	return ret;
}