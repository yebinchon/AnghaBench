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
struct ioat_chan_common {int /*<<< orphan*/  cleanup_lock; int /*<<< orphan*/  completion; } ;
struct ioat2_dma_chan {int /*<<< orphan*/  ring_lock; struct ioat_chan_common base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioat2_dma_chan*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ioat_chan_common*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ioat2_dma_chan *ioat)
{
	struct ioat_chan_common *chan = &ioat->base;
	unsigned long phys_complete;

	FUNC2(chan->completion);

	if (!FUNC3(&chan->cleanup_lock))
		return;

	if (!FUNC1(chan, &phys_complete)) {
		FUNC4(&chan->cleanup_lock);
		return;
	}

	if (!FUNC3(&ioat->ring_lock)) {
		FUNC4(&chan->cleanup_lock);
		return;
	}

	FUNC0(ioat, phys_complete);

	FUNC4(&ioat->ring_lock);
	FUNC4(&chan->cleanup_lock);
}