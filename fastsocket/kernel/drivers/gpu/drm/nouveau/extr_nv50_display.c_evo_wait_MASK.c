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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  user; } ;
struct nv50_dmac {int* ptr; TYPE_1__ base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u32 *
FUNC6(void *evoc, int nr)
{
	struct nv50_dmac *dmac = evoc;
	u32 put = FUNC3(dmac->base.user, 0x0000) / 4;

	FUNC1(&dmac->lock);
	if (put + nr >= (PAGE_SIZE / 4) - 8) {
		dmac->ptr[put] = 0x20000000;

		FUNC5(dmac->base.user, 0x0000, 0x00000000);
		if (!FUNC4(dmac->base.user, 0x0004, ~0, 0x00000000)) {
			FUNC2(&dmac->lock);
			FUNC0(dmac->base.user, "channel stalled\n");
			return NULL;
		}

		put = 0;
	}

	return dmac->ptr + put;
}