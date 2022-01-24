#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dma; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ direction; scalar_t__ start_time; } ;
struct TYPE_5__ {int hcr_val; int /*<<< orphan*/  lock; scalar_t__ rx_active; scalar_t__ busy; scalar_t__ dmaing; TYPE_1__ current_dma; } ;
typedef  TYPE_2__ elp_device ;

/* Variables and functions */
 int DIR ; 
 int DMAE ; 
 int TCEN ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC10(struct net_device *dev)
{
	elp_device *adapter = FUNC3(dev);
	if (adapter->dmaing && FUNC9(jiffies, adapter->current_dma.start_time + 10)) {
		unsigned long flags, f;
		FUNC5("%s: DMA %s timed out, %d bytes left\n", dev->name,
			adapter->current_dma.direction ? "download" : "upload",
			FUNC2(dev->dma));
		FUNC7(&adapter->lock, flags);
		adapter->dmaing = 0;
		adapter->busy = 0;

		f=FUNC0();
		FUNC1(dev->dma);
		FUNC6(f);

		if (adapter->rx_active)
			adapter->rx_active--;
		FUNC4(adapter->hcr_val & ~(DMAE | TCEN | DIR), dev);
		FUNC8(&adapter->lock, flags);
	}
}