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
struct ipath_devdata {int /*<<< orphan*/  ipath_sdma_vl15_timer; int /*<<< orphan*/  ipath_sdma_vl15_count; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ipath_devdata *dd)
{
	/* ipath_sdma_lock must already be held */
	if (FUNC0(&dd->ipath_sdma_vl15_count) != 0) {
		unsigned long interval = (HZ + 19) / 20;
		FUNC2(&dd->ipath_sdma_vl15_timer, jiffies + interval);
	} else {
		FUNC1(&dd->ipath_sdma_vl15_timer);
	}
}