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
struct mv643xx_eth_shared_private {scalar_t__ err_interrupt; int /*<<< orphan*/  smi_busy_wait; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_shared_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mv643xx_eth_shared_private *msp)
{
	if (msp->err_interrupt == NO_IRQ) {
		int i;

		for (i = 0; !FUNC2(msp); i++) {
			if (i == 10)
				return -ETIMEDOUT;
			FUNC1(10);
		}

		return 0;
	}

	if (!FUNC2(msp)) {
		FUNC3(msp->smi_busy_wait, FUNC2(msp),
				   FUNC0(100));
		if (!FUNC2(msp))
			return -ETIMEDOUT;
	}

	return 0;
}