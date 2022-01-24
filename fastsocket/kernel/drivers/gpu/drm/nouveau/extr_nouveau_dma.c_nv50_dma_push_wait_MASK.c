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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int ib_free; scalar_t__ ib_put; scalar_t__ ib_max; } ;
struct nouveau_channel {TYPE_1__ dma; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct nouveau_channel *chan, int count)
{
	uint32_t cnt = 0, prev_get = 0;

	while (chan->dma.ib_free < count) {
		uint32_t get = FUNC1(chan->object, 0x88);
		if (get != prev_get) {
			prev_get = get;
			cnt = 0;
		}

		if ((++cnt & 0xff) == 0) {
			FUNC0(1);
			if (cnt > 100000)
				return -EBUSY;
		}

		chan->dma.ib_free = get - chan->dma.ib_put;
		if (chan->dma.ib_free <= 0)
			chan->dma.ib_free += chan->dma.ib_max;
	}

	return 0;
}