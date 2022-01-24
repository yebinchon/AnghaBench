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
struct ioat_chan_common {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ioat_chan_common*) ; 
 scalar_t__ FUNC2 (struct ioat_chan_common*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(struct ioat_chan_common *chan, unsigned long tmo)
{
	unsigned long end = jiffies + tmo;
	int err = 0;

	FUNC1(chan);
	while (FUNC2(chan)) {
		if (end && FUNC3(jiffies, end)) {
			err = -ETIMEDOUT;
			break;
		}
		FUNC0();
	}

	return err;
}