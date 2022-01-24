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
struct il_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_SCAN_HW ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

int
FUNC7(struct il_priv *il, unsigned long ms)
{
	unsigned long timeout = jiffies + FUNC3(ms);

	FUNC2(&il->mutex);

	FUNC0("Scan cancel timeout\n");

	FUNC1(il);

	while (FUNC6(jiffies, timeout)) {
		if (!FUNC5(S_SCAN_HW, &il->status))
			break;
		FUNC4(20);
	}

	return FUNC5(S_SCAN_HW, &il->status);
}