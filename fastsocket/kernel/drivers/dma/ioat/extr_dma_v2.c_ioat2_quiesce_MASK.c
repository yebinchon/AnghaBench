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
typedef  int /*<<< orphan*/  u32 ;
struct ioat_chan_common {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ioat_chan_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioat_chan_common*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

int FUNC6(struct ioat_chan_common *chan, unsigned long tmo)
{
	unsigned long end = jiffies + tmo;
	int err = 0;
	u32 status;

	status = FUNC1(chan);
	if (FUNC3(status) || FUNC4(status))
		FUNC2(chan);
	while (FUNC3(status) || FUNC4(status)) {
		if (tmo && FUNC5(jiffies, end)) {
			err = -ETIMEDOUT;
			break;
		}
		status = FUNC1(chan);
		FUNC0();
	}

	return err;
}