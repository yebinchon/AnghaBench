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
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC417_RWD ; 
 int NETUP_ACK ; 
 int /*<<< orphan*/  NETUP_CTRL_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct cx23885_dev *dev)
{
	int mem;
	unsigned long timeout = jiffies + FUNC2(1);

	for (;;) {
		mem = FUNC0(MC417_RWD);
		if ((mem & NETUP_ACK) == 0)
			break;
		if (FUNC3(jiffies, timeout))
			break;
		FUNC4(1);
	}

	FUNC1(MC417_RWD, NETUP_CTRL_OFF);

	return mem & 0xff;
}