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

/* Variables and functions */
 int /*<<< orphan*/  CT82C710_DATA ; 
 int CT82C710_DEV_IDLE ; 
 int CT82C710_RX_FULL ; 
 int /*<<< orphan*/  CT82C710_STATUS ; 
 int CT82C710_TX_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void)
{
	int timeout = 60000;

	while ((FUNC0(CT82C710_STATUS) & (CT82C710_RX_FULL | CT82C710_TX_IDLE | CT82C710_DEV_IDLE))
		       != (CT82C710_DEV_IDLE | CT82C710_TX_IDLE) && timeout) {

		if (FUNC1(CT82C710_STATUS) & CT82C710_RX_FULL) FUNC1(CT82C710_DATA);

		FUNC2(1);
		timeout--;
	}

	return !timeout;
}