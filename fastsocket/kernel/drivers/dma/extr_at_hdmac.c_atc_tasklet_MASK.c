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
struct at_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  error_status; int /*<<< orphan*/  chan_common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*) ; 
 scalar_t__ FUNC1 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct at_dma_chan *atchan = (struct at_dma_chan *)data;

	/* Channel cannot be enabled here */
	if (FUNC1(atchan)) {
		FUNC4(FUNC3(&atchan->chan_common),
			"BUG: channel enabled in tasklet\n");
		return;
	}

	FUNC5(&atchan->lock);
	if (FUNC7(0, &atchan->error_status))
		FUNC2(atchan);
	else
		FUNC0(atchan);

	FUNC6(&atchan->lock);
}