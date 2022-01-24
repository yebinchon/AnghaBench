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
struct dma_chan {int dummy; } ;
struct at_dma_chan {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct at_dma_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *chan)
{
	struct at_dma_chan	*atchan = FUNC6(chan);

	FUNC3(FUNC2(chan), "issue_pending\n");

	if (!FUNC1(atchan)) {
		FUNC4(&atchan->lock);
		FUNC0(atchan);
		FUNC5(&atchan->lock);
	}
}