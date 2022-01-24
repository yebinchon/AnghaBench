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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct timeval {unsigned long long tv_sec; scalar_t__ tv_usec; } ;
struct hpsb_host {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* devctl ) (struct hpsb_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GET_CYCLE_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct hpsb_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct hpsb_host *host, u32 *cycle_timer,
			  u64 *local_time)
{
	int ctr;
	struct timeval tv;
	unsigned long flags;

	if (!host || !cycle_timer || !local_time)
		return -EINVAL;

	FUNC3();
	FUNC2(flags);

	ctr = host->driver->devctl(host, GET_CYCLE_COUNTER, 0);
	if (ctr)
		FUNC0(&tv);

	FUNC1(flags);
	FUNC4();

	if (!ctr)
		return -EIO;
	*cycle_timer = ctr;
	*local_time = tv.tv_sec * 1000000ULL + tv.tv_usec;
	return 0;
}