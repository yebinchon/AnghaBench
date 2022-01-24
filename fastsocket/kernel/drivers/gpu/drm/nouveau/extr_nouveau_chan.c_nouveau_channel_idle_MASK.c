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
struct nouveau_fence {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct nouveau_channel {int /*<<< orphan*/  handle; struct nouveau_cli* cli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_cli*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_channel*,int,struct nouveau_fence**) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence**) ; 
 int FUNC3 (struct nouveau_fence*,int,int) ; 

int
FUNC4(struct nouveau_channel *chan)
{
	struct nouveau_cli *cli = chan->cli;
	struct nouveau_fence *fence = NULL;
	int ret;

	ret = FUNC1(chan, false, &fence);
	if (!ret) {
		ret = FUNC3(fence, false, false);
		FUNC2(&fence);
	}

	if (ret)
		FUNC0(cli, "failed to idle channel 0x%08x [%s]\n",
			 chan->handle, cli->base.name);
	return ret;
}