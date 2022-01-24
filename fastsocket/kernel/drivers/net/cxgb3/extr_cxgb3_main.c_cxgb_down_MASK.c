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
struct adapter {int /*<<< orphan*/  work_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  cxgb3_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 

__attribute__((used)) static void FUNC7(struct adapter *adapter, int on_wq)
{
	FUNC6(adapter);
	FUNC3(&adapter->work_lock);	/* sync with PHY intr task */
	FUNC5(adapter);
	FUNC4(&adapter->work_lock);

	FUNC1(adapter);
	FUNC2(adapter);
	FUNC6(adapter);
	if (!on_wq)
		FUNC0(cxgb3_wq);/* wait for external IRQ handler */
}