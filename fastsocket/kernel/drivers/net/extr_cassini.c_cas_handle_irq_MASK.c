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
struct net_device {int dummy; } ;
struct cas {int /*<<< orphan*/ * stat_lock; TYPE_1__* net_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;

/* Variables and functions */
 int const INTR_ERROR_MASK ; 
 int const INTR_RX_BUF_AE ; 
 int const INTR_RX_BUF_UNAVAIL ; 
 int const INTR_RX_COMP_AF ; 
 int const INTR_RX_COMP_FULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct cas*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct net_device *dev,
				  struct cas *cp, const u32 status)
{
	/* housekeeping interrupts */
	if (status & INTR_ERROR_MASK)
		FUNC2(dev, cp, status);

	if (status & INTR_RX_BUF_UNAVAIL) {
		/* Frame arrived, no free RX buffers available.
		 * NOTE: we can get this on a link transition.
		 */
		FUNC4(cp, 0, 0);
		FUNC5(&cp->stat_lock[0]);
		cp->net_stats[0].rx_dropped++;
		FUNC6(&cp->stat_lock[0]);
	} else if (status & INTR_RX_BUF_AE) {
		FUNC4(cp, 0, FUNC1(0) -
				    FUNC0(0));
	}

	if (status & (INTR_RX_COMP_AF | INTR_RX_COMP_FULL))
		FUNC3(dev, cp, 0);
}