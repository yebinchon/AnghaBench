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
typedef  int /*<<< orphan*/  u32 ;
struct ioat_chan_common {int dummy; } ;
struct ioat2_dma_chan {struct ioat_chan_common base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioat2_dma_chan*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ioat2_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ioat_chan_common*) ; 
 scalar_t__ FUNC4 (struct ioat_chan_common*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_chan_common*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ioat2_dma_chan *ioat)
{
	struct ioat_chan_common *chan = &ioat->base;
	unsigned long phys_complete;
	u32 status;

	status = FUNC3(chan);
	if (FUNC6(status) || FUNC7(status))
		FUNC5(chan);
	while (FUNC6(status) || FUNC7(status)) {
		status = FUNC3(chan);
		FUNC2();
	}

	if (FUNC4(chan, &phys_complete))
		FUNC0(ioat, phys_complete);

	FUNC1(ioat);
}