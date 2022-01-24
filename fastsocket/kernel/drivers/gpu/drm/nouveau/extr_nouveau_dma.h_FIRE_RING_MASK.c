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
struct TYPE_4__ {int cur; int put; scalar_t__ ib_max; } ;
struct TYPE_3__ {int /*<<< orphan*/  buffer; } ;
struct nouveau_channel {int accel_done; TYPE_2__ dma; TYPE_1__ push; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void
FUNC2(struct nouveau_channel *chan)
{
	if (chan->dma.cur == chan->dma.put)
		return;
	chan->accel_done = true;

	if (chan->dma.ib_max) {
		FUNC1(chan, chan->push.buffer, chan->dma.put << 2,
			      (chan->dma.cur - chan->dma.put) << 2);
	} else {
		FUNC0(chan->dma.cur);
	}

	chan->dma.put = chan->dma.cur;
}