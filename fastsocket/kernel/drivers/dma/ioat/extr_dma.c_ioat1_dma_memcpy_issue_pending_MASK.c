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
struct ioat_dma_chan {scalar_t__ pending; int /*<<< orphan*/  desc_lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioat_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ioat_dma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *chan)
{
	struct ioat_dma_chan *ioat = FUNC3(chan);

	if (ioat->pending > 0) {
		FUNC1(&ioat->desc_lock);
		FUNC0(ioat);
		FUNC2(&ioat->desc_lock);
	}
}