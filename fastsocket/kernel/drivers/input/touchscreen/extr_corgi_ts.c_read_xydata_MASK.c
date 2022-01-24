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
struct TYPE_2__ {unsigned int pressure; unsigned int x; unsigned int y; } ;
struct corgi_ts {TYPE_1__ tc; } ;

/* Variables and functions */
 unsigned int ADSCTRL_ADR_SH ; 
 unsigned int ADSCTRL_STS ; 
 unsigned long FUNC0 (struct corgi_ts*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned int FUNC7 (struct corgi_ts*,int,int,unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct corgi_ts *corgi_ts)
{
	unsigned int x, y, z1, z2;
	unsigned long flags, wait_time;

	/* critical section */
	FUNC6(flags);
	FUNC2();
	wait_time = FUNC0(corgi_ts);

	/* Y-axis */
	FUNC7(corgi_ts, 0, 1, 1u, wait_time);

	/* Y-axis */
	FUNC7(corgi_ts, 1, 1, 1u, wait_time);

	/* X-axis */
	y = FUNC7(corgi_ts, 1, 1, 5u, wait_time);

	/* Z1 */
	x = FUNC7(corgi_ts, 1, 1, 3u, wait_time);

	/* Z2 */
	z1 = FUNC7(corgi_ts, 1, 1, 4u, wait_time);
	z2 = FUNC7(corgi_ts, 1, 0, 4u, wait_time);

	/* Power-Down Enable */
	FUNC3((1u << ADSCTRL_ADR_SH) | ADSCTRL_STS);
	FUNC1();

	FUNC4();
	FUNC5(flags);

	if (x== 0 || y == 0 || z1 == 0 || (x * (z2 - z1) / z1) >= 15000) {
		corgi_ts->tc.pressure = 0;
		return 0;
	}

	corgi_ts->tc.x = x;
	corgi_ts->tc.y = y;
	corgi_ts->tc.pressure = (x * (z2 - z1)) / z1;
	return 1;
}