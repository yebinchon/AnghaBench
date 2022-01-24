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
struct atl1c_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct atl1c_adapter *adapter)
{
	FUNC0(FUNC4());
	FUNC1(adapter);
	FUNC2(adapter);
	FUNC3(__AT_RESETTING, &adapter->flags);
}